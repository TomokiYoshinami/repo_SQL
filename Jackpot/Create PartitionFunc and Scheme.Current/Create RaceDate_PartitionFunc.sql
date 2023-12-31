USE [Jackpot];
GO
BEGIN TRANSACTION;
CREATE PARTITION FUNCTION [RaceDate_PartitionFunc](DATE) AS RANGE RIGHT FOR VALUES(N'1986-01-01', N'1987-01-01', N'1988-01-01', N'1989-01-01', N'1990-01-01', N'1991-01-01', N'1992-01-01', N'1993-01-01', N'1994-01-01', N'1995-01-01', N'1996-01-01', N'1997-01-01', N'1998-01-01', N'1999-01-01', N'2000-01-01', N'2001-01-01', N'2002-01-01', N'2003-01-01', N'2004-01-01', N'2005-01-01', N'2006-01-01', N'2007-01-01', N'2008-01-01', N'2009-01-01', N'2010-01-01', N'2011-01-01', N'2012-01-01', N'2013-01-01', N'2014-01-01', N'2015-01-01', N'2016-01-01', N'2017-01-01', N'2018-01-01', N'2019-01-01', N'2020-01-01', N'2021-01-01', N'2022-01-01', N'2023-01-01', N'2024-01-01', N'2025-01-01', N'2026-01-01', N'2027-01-01', N'2028-01-01', N'2029-01-01');
COMMIT TRANSACTION;
GO