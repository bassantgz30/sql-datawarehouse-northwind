/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    This script creates a new database named 'DWHNorthWind' after checking if it already exists. 
    If the database exists, it is dropped and then recreated. 
	
	The script also sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
*/

USE master;
GO

-- Drop and recreate the 'DWHNorthWind' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWHNorthWind')
BEGIN
    ALTER DATABASE DWHNorthWind SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DWHNorthWind;
END;
GO

-- Create the 'DWHNorthWind' database
CREATE DATABASE DWHNorthWind;
GO

USE DWHNorthWind;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO




