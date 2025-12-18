/*
=============================================================
Create Database and Schemas (MySQL Version)
=============================================================
Script Purpose:
    This script creates a new Data Warehouse environment in MySQL.
    Since MySQL treats SCHEMA as DATABASE, the Bronze, Silver, and
    Gold layers are implemented as separate databases.

WARNING:
    Running this script will DROP the databases if they exist.
    All data will be permanently deleted.
=============================================================
*/

-- Drop existing databases if they exist
DROP DATABASE IF EXISTS DataWarehouse_bronze;
DROP DATABASE IF EXISTS DataWarehouse_silver;
DROP DATABASE IF EXISTS DataWarehouse_gold;

-- Create Bronze Layer (Raw Data)
CREATE DATABASE DataWarehouse_bronze;
-- Create Silver Layer (Cleaned & Transformed Data)
CREATE DATABASE DataWarehouse_silver;
-- Create Gold Layer (Analytics & Reporting)
CREATE DATABASE DataWarehouse_gold;
