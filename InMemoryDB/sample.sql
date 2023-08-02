SELECT d.compatibility_level
FROM sys.databases as d
WHERE d.name = Db_Name();

/*
 インメモリ OLTP の基本操作
*/
-- データベースの作成
USE [master]
GO

CREATE DATABASE [InMemoryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InMemoryDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\InMemoryDB.mdf' , SIZE = 2048000KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InMemoryDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\InMemoryDB_log.ldf' , SIZE = 2048000KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InMemoryDB] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [InMemoryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InMemoryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InMemoryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InMemoryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InMemoryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [InMemoryDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InMemoryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InMemoryDB] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [InMemoryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InMemoryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InMemoryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InMemoryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InMemoryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InMemoryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InMemoryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InMemoryDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InMemoryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InMemoryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InMemoryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InMemoryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InMemoryDB] SET  READ_WRITE 
GO
ALTER DATABASE [InMemoryDB] SET RECOVERY FULL 
GO
ALTER DATABASE [InMemoryDB] SET  MULTI_USER 
GO
ALTER DATABASE [InMemoryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InMemoryDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InMemoryDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InMemoryDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [InMemoryDB]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [InMemoryDB] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO


--データベース オプション MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT を使用することで、WITH (SNAPSHOT) ヒントの必要はなくなります。
--このオプションを ONに設定すると、低い分離レベルでのメモリ最適化テーブルへのアクセスは、自動的に SNAPSHOT 分離に昇格されます。
ALTER DATABASE [InMemoryDB] 
SET MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = ON
GO

USE [InMemoryDB]
GO

-- 通常のディスク ベースのテーブルの作成
CREATE TABLE t1_disk
(  col1 int PRIMARY KEY CLUSTERED
  ,col2 nvarchar(100) )


  --ClearnUp
  TRUNCATE TABLE t1_disk

-- 100万件の INSERT
--7秒
SET NOCOUNT ON
BEGIN TRAN
DECLARE @i int = 1
WHILE @i <= 1000000
BEGIN
  INSERT INTO t1_disk VALUES (@i, N'AAAAA')
  SET @i += 1
END
COMMIT TRAN
SET NOCOUNT OFF


-- データの確認
SELECT TOP 1000 * FROM t1_disk

-- データ件数の確認
SELECT COUNT(*) FROM t1_disk


/*
 メモリ最適化テーブルを格納するためのファイル グループの作成
*/

-- ファイル グループの追加
USE [master]
GO
ALTER DATABASE [InMemoryDB] ADD FILEGROUP [fg1] CONTAINS MEMORY_OPTIMIZED_DATA 
GO

USE [master]
GO
ALTER DATABASE [InMemoryDB] ADD FILE ( NAME = N'JSSUG_InMemory', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\JSSUG_InMemory' ) TO FILEGROUP [fg1]
GO
ALTER DATABASE [InMemoryDB] ADD FILEGROUP [InMemGroup]
GO

-- メモリ最適化テーブルの作成
USE [InMemoryDB]
GO

CREATE TABLE t1_InMem
(  col1 int NOT NULL
          PRIMARY KEY NONCLUSTERED
          HASH WITH (BUCKET_COUNT = 2000000)
  ,col2 nvarchar(100) )
 WITH ( MEMORY_OPTIMIZED = ON, 
        DURABILITY = SCHEMA_ONLY )
--バケット数は、理想的にはインデックス キーの個別の値の数の 1 から 2 倍の範囲内にします


-- メモリ最適化テーブルの場合の性能確認
--4秒
SET NOCOUNT ON
BEGIN TRAN
DECLARE @i int = 1
WHILE @i <= 1000000
BEGIN
  INSERT INTO t1_InMem VALUES (@i, N'AAAAA')
  SET @i += 1
END
COMMIT TRAN
SET NOCOUNT OFF

-- データの確認
SELECT TOP 1000 * FROM t1_InMem

-- データ件数の確認
SELECT COUNT(*) FROM t1_InMem


/*
 テーブル サイズを確認
*/
EXEC sp_spaceused 't1_disk'

EXEC sp_spaceused 't1_InMem'

SELECT OBJECT_NAME(object_id), *
FROM sys.dm_db_xtp_table_memory_stats

--Database ID確認
SELECT DB_ID()

--DLL確認
SELECT
        mod1.name,
        mod1.description
    from
        sys.dm_os_loaded_modules  as mod1
    where
        mod1.description = 'XTP Native DLL';

/*
 ネイティブ コンパイル ストアド プロシージャの作成
*/
CREATE PROCEDURE [dbo].[nativeTest](@LoopCount int)
WITH NATIVE_COMPILATION, SCHEMABINDING
AS BEGIN ATOMIC WITH
(
 TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'japanese'
)
	DECLARE @iCnt int = 1
	WHILE @iCnt <= @LoopCount
	BEGIN
		INSERT INTO dbo.t1_InMem VALUES (@iCnt, N'AAAAA');
		SET @iCnt += 1
	END
END
GO

--DLL確認
SELECT
        mod1.name,
        mod1.description
    from
        sys.dm_os_loaded_modules  as mod1
    where
        mod1.description = 'XTP Native DLL';

-- いったんデータを削除
DELETE FROM t1_InMem

-- 100万件の INSERT
EXEC nativeTest @LoopCount = 1000000
GO

-- データの確認
SELECT TOP 1000 * FROM t1_InMem
SELECT COUNT(*) FROM t1_InMem

--Hash Index確認
SELECT  
  QUOTENAME(SCHEMA_NAME(t.schema_id)) + N'.' + QUOTENAME(OBJECT_NAME(h.object_id)) as [table],   
  i.name                   as [index],   
  h.total_bucket_count,  
  h.empty_bucket_count,  
    
  FLOOR((  
    CAST(h.empty_bucket_count as float) /  
      h.total_bucket_count) * 100)  
                            as [empty_bucket_percent],  
  h.avg_chain_length,   
  h.max_chain_length  
FROM  
        sys.dm_db_xtp_hash_index_stats  as h   
  JOIN sys.indexes                     as i  
          ON h.object_id = i.object_id  
          AND h.index_id  = i.index_id  
JOIN sys.memory_optimized_tables_internal_attributes ia ON h.xtp_object_id=ia.xtp_object_id
JOIN sys.tables t on h.object_id=t.object_id
WHERE ia.type=1
ORDER BY [table], [index];  


-- 1千万件の INSERT
DELETE FROM t1_InMem
--16秒
EXEC nativeTest @LoopCount = 10000000

SELECT COUNT(*) FROM t1_InMem

--Hash Index確認
SELECT  
  QUOTENAME(SCHEMA_NAME(t.schema_id)) + N'.' + QUOTENAME(OBJECT_NAME(h.object_id)) as [table],   
  i.name                   as [index],   
  h.total_bucket_count,  
  h.empty_bucket_count,  
    
  FLOOR((  
    CAST(h.empty_bucket_count as float) /  
      h.total_bucket_count) * 100)  
                            as [empty_bucket_percent],  
  h.avg_chain_length,   
  h.max_chain_length  
FROM  
        sys.dm_db_xtp_hash_index_stats  as h   
  JOIN sys.indexes                     as i  
          ON h.object_id = i.object_id  
          AND h.index_id  = i.index_id  
JOIN sys.memory_optimized_tables_internal_attributes ia ON h.xtp_object_id=ia.xtp_object_id
JOIN sys.tables t on h.object_id=t.object_id
WHERE ia.type=1
ORDER BY [table], [index];  

/*
空のバケット:
33% は適切な目標値ですが、通常は、より大きなパーセント値 (ちょうど 90%) がふさわしい値となります。
バケット数が個別のキー値の数と等しい場合は、バケットの約 33% が空です。
10% 未満の値は低すぎます。

バケット内のチェーン:
平均チェーン長は、重複するインデックス キーの値がない場合、1 が最適です。 通常、10 までのチェーン長を使用できます。
平均チェーン長が 10 より大きく、空のバケットの割合が 10% を超える場合、非常に多くのデータが重複しているため、ハッシュ インデックスは最も適切な種類ではない可能性があります。
*/

--BucketCount変更
--もともとTable定義(BUCKET_COUNT = 2000000)
ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3FD2327E49]　REBUILD WITH (BUCKET_COUNT = 4000000)
GO

ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3FD2327E49]　REBUILD WITH (BUCKET_COUNT = 10000000)
GO

ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3FD2327E49]　REBUILD WITH (BUCKET_COUNT = 40000000)
GO

ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3FD2327E49]　REBUILD WITH (BUCKET_COUNT = 60000000)
GO

ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3FD2327E49]　REBUILD WITH (BUCKET_COUNT = 80000000)
GO

ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3F0CA4C29E]　REBUILD WITH (BUCKET_COUNT = 200000000)
GO

ALTER TABLE t1_InMem
	ALTER INDEX [PK__t1_InMem__357D0D3FD2327E49]　REBUILD WITH (BUCKET_COUNT = 500000)
GO

--Hash Index確認
SELECT  
  QUOTENAME(SCHEMA_NAME(t.schema_id)) + N'.' + QUOTENAME(OBJECT_NAME(h.object_id)) as [table],   
  i.name                   as [index],   
  h.total_bucket_count,  
  h.empty_bucket_count,  
    
  FLOOR((  
    CAST(h.empty_bucket_count as float) /  
      h.total_bucket_count) * 100)  
                            as [empty_bucket_percent],  
  h.avg_chain_length,   
  h.max_chain_length  
FROM  
        sys.dm_db_xtp_hash_index_stats  as h   
  JOIN sys.indexes                     as i  
          ON h.object_id = i.object_id  
          AND h.index_id  = i.index_id  
JOIN sys.memory_optimized_tables_internal_attributes ia ON h.xtp_object_id=ia.xtp_object_id
JOIN sys.tables t on h.object_id=t.object_id
WHERE ia.type=1
ORDER BY [table], [index];  


--Memory-Optimized TempDB Metadata
USE master
GO
ALTER SERVER CONFIGURATION SET MEMORY_OPTIMIZED TEMPDB_METADATA = ON;
GO

EXEC sys.sp_configure N'show advanced options', 1;
RECONFIGURE WITH OVERRIDE;
EXEC sys.sp_configure N'tempdb metadata memory-optimized', 1;
RECONFIGURE WITH OVERRIDE;

SELECT SERVERPROPERTY('IsTempDBMetadataMemoryOptimized') AS IsTempDBMetadataMemoryOptimized

--確認
USE master
GO
SELECT
SERVERPROPERTY('IsTempDBMetadataMemoryOptimized')
AS IsTempDBMetadataMemoryOptimized;
GO

--Drop　Database
USE [master]
GO

DROP DATABASE [InMemoryDB]
GO