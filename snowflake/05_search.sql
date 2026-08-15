-- ============================================================================
-- 05_SEARCH.SQL — Cortex Search for Electronics Supply Chain Visibility
-- ============================================================================
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
USE SCHEMA SEARCH;

CREATE OR REPLACE CORTEX SEARCH SERVICE SEARCH.SUPPLY_CHAIN_DOCS_SEARCH
  ON CONTENT
  ATTRIBUTES DOC_TYPE, SUPPLIER_ID, OEM_CUSTOMER
  WAREHOUSE = ELECTRONICS_WH
  TARGET_LAG = '1 hour'
AS (
  SELECT * FROM RAW.SUPPLY_CHAIN_DOCS
);
