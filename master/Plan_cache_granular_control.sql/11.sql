--
サンプルデータベース DB01 を作成
CREATE DATABASE DB01
DB01
GO
USE DB01
DB01
GO
--
DB01 にテーブルを作成しデータを挿入
CREATE TABLE Table11 (c1 int, c2 varchar(10))
10))
INSERT INTO Table11 VALUES (1101, 'test1101'), (1102, 'test1102')
test1102')
GO
CREATE TABLE Table12 (c1 int, c2 varchar(10))
10))
INSERT INTO Table12 VALUES (1201, 'test1201'), (1202, 'test1202')
test1202')
GO
--
DB0 1 にストアドプロシージャを作成
CREATE PROCEDURE
SelectTable11 AS
SELECT * FROM Table11 Table11
GO
CREATE PROCEDURE
SelectTable1 2 AS
238
SELECT * FROM Table12SELECT * FROM Table12
GO
GO
CREATE PROCEDURE
CREATE PROCEDURE SelectTable1SelectTable122c2c2 ASAS
SELECT SELECT c2c2 FROM TableFROM Table1212
GO
GO
--
-- サンプルデータベースサンプルデータベースDB02DB02を作成を作成
CREATE DATABASE DB02
CREATE DATABASE DB02
GO
GO
USE DB02
USE DB02
GO
GO
--
-- DB02 DB02 にテーブルを作成しデータを挿入にテーブルを作成しデータを挿入
CREATE TABLE Table21 (c1 int, c2 varchar(10))
CREATE TABLE Table21 (c1 int, c2 varchar(10))
INSERT INTO Table21 VALUES (2101, 'test100'), (2102, 'test101')
INSERT INTO Table21 VALUES (2101, 'test100'), (2102, 'test101')
GO
GO
--
-- DB02 DB02 にストアドプロシージャを作成にストアドプロシージャを作成
CREATE PROCEDURE
CREATE PROCEDURE SelectTable21SelectTable21 ASAS
SELECT * FROM Table21SELECT * FROM Table21
GO
GO