-- ============================================================================
-- Electronics Supply Chain Visibility
-- Multi-tier supplier tracking for Vietnam's US$114B electronics export sector — Dynamic Tables build real-time supply graphs, ML.FORECAST predicts lead times, and Iceberg enables Samsung/Apple supply chain audits via Athena.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS ELECTRONICS_SUPPLY_CHAIN;
CREATE WAREHOUSE IF NOT EXISTS ELECTRONICS_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE ELECTRONICS_WH;
