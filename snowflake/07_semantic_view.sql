-- ============================================================================
-- 07_SEMANTIC_VIEW.SQL — Semantic View for Electronics Supply Chain Visibility
-- ============================================================================
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
USE SCHEMA APP;

CREATE OR REPLACE SEMANTIC VIEW APP.SUPPLY_CHAIN_ANALYTICS
  COMMENT = 'Electronics supply chain, supplier risk, and delivery compliance analytics'
AS
  TABLES (
    CURATED.SUPPLIER_RISK_SCORE AS supplier_risk_score,CURATED.DELIVERY_COMPLIANCE AS delivery_compliance,CURATED.LEAD_TIME_ANALYTICS AS lead_time_analytics,CURATED.SUPPLY_GRAPH AS supply_graph
  );
