-- ============================================================================
-- 04_DYNAMIC_TABLES.SQL — Curated layer for Electronics Supply Chain Visibility
-- ============================================================================
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
USE SCHEMA CURATED;

-- SUPPLIER_RISK_SCORE: Real-time supplier risk scoring from delivery, quality, and financial data
-- Source: SUPPLIERS, PURCHASE_ORDERS, QUALITY_METRICS
CREATE OR REPLACE DYNAMIC TABLE CURATED.SUPPLIER_RISK_SCORE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = ELECTRONICS_WH
AS
SELECT * FROM RAW.SUPPLIERS;
-- TODO: Replace with actual join/aggregation logic per demo

-- DELIVERY_COMPLIANCE: OEM delivery compliance tracking by customer and product line
-- Source: PURCHASE_ORDERS, SUPPLIERS
CREATE OR REPLACE DYNAMIC TABLE CURATED.DELIVERY_COMPLIANCE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = ELECTRONICS_WH
AS
SELECT * FROM RAW.PURCHASE_ORDERS;
-- TODO: Replace with actual join/aggregation logic per demo

-- LEAD_TIME_ANALYTICS: Supplier lead time trends and deviation analysis
-- Source: PURCHASE_ORDERS
CREATE OR REPLACE DYNAMIC TABLE CURATED.LEAD_TIME_ANALYTICS
  TARGET_LAG = '5 minutes'
  WAREHOUSE = ELECTRONICS_WH
AS
SELECT * FROM RAW.PURCHASE_ORDERS;
-- TODO: Replace with actual join/aggregation logic per demo

-- SUPPLY_GRAPH: Multi-tier dependency graph for concentration risk
-- Source: SUPPLIERS, BOM_ITEMS
CREATE OR REPLACE DYNAMIC TABLE CURATED.SUPPLY_GRAPH
  TARGET_LAG = '5 minutes'
  WAREHOUSE = ELECTRONICS_WH
AS
SELECT * FROM RAW.SUPPLIERS;
-- TODO: Replace with actual join/aggregation logic per demo

