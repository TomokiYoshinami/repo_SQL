USE [master]
GO

DROP DATABASE [Jackpot501]
GO

CREATE DATABASE [Jackpot501]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Jackpot_data_01', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_01.mdf' , SIZE = 5011648KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_02', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_02.ndf' , SIZE = 4964160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_03', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_03.ndf' , SIZE = 5136256KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_04', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_04.ndf' , SIZE = 5241664KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_05', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_05.ndf' , SIZE = 5172416KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_06', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_06.ndf' , SIZE = 5152640KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_07', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_07.ndf' , SIZE = 4995776KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_08', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_08.ndf' , SIZE = 5251200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_09', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_09.ndf' , SIZE = 5025984KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_10', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_10.ndf' , SIZE = 5085248KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_11', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_11.ndf' , SIZE = 5203648KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_data_12', FILENAME = N'C:\MSSQL\Data\Jackpot501_data_12.ndf' , SIZE = 5088832KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ), 
 FILEGROUP [INDEX]  DEFAULT
( NAME = N'Jackpot_index_01', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_01.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_02', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_02.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_03', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_03.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_04', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_04.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_05', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_05.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_06', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_06.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_07', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_07.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_08', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_08.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_09', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_09.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_10', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_10.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_11', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_11.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB ),
( NAME = N'Jackpot_index_12', FILENAME = N'C:\MSSQL\Data\Jackpot501_index_12.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1048576KB )
 LOG ON 
( NAME = N'Jackpot_log_01', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_01.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_02', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_02.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_03', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_03.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_04', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_04.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_05', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_05.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_06', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_06.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_07', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_07.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_08', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_08.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_09', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_09.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_10', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_10.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_11', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_11.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB ), 
( NAME = N'Jackpot_log_12', FILENAME = N'C:\MSSQL\Data\Jackpot501_log_12.ldf' , SIZE = 131016KB , MAXSIZE = 2048GB , FILEGROWTH = 1048576KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

ALTER DATABASE [Jackpot501] MODIFY FILEGROUP [INDEX] AUTOGROW_ALL_FILES
GO

ALTER DATABASE [Jackpot501] MODIFY FILEGROUP [PRIMARY] AUTOGROW_ALL_FILES
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Jackpot501].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Jackpot501] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Jackpot501] SET ANSI_NULLS ON 
GO

ALTER DATABASE [Jackpot501] SET ANSI_PADDING ON 
GO

ALTER DATABASE [Jackpot501] SET ANSI_WARNINGS ON 
GO

ALTER DATABASE [Jackpot501] SET ARITHABORT ON 
GO

ALTER DATABASE [Jackpot501] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Jackpot501] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Jackpot501] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Jackpot501] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Jackpot501] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Jackpot501] SET CONCAT_NULL_YIELDS_NULL ON 
GO

ALTER DATABASE [Jackpot501] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Jackpot501] SET QUOTED_IDENTIFIER ON 
GO

ALTER DATABASE [Jackpot501] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Jackpot501] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Jackpot501] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Jackpot501] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Jackpot501] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Jackpot501] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO

ALTER DATABASE [Jackpot501] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Jackpot501] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [Jackpot501] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Jackpot501] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Jackpot501] SET  MULTI_USER 
GO

ALTER DATABASE [Jackpot501] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Jackpot501] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Jackpot501] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Jackpot501] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Jackpot501] SET DELAYED_DURABILITY = ALLOWED 
GO

ALTER DATABASE [Jackpot501] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Jackpot501] SET QUERY_STORE = ON
GO

ALTER DATABASE [Jackpot501] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 300, INTERVAL_LENGTH_MINUTES = 15, MAX_STORAGE_SIZE_MB = 1024, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [Jackpot501] SET  READ_WRITE 
GO


