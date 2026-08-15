-- ============================================================================
-- 03_STAGING.SQL — Generate synthetic data for Electronics Supply Chain Visibility
-- Country: VIETNAM | Currency: VND
-- ============================================================================
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
USE SCHEMA RAW;

-- Data generation scripts are demo-specific.
-- See the handcrafted SQL in the aws-malaysia-semiconductor-yield demo for
-- the full pattern: GENERATOR + UNIFORM + LATERAL for distribution,
-- Cortex Complete for text generation, engineered key demo numbers.

-- Target row counts:
-- SUPPLIERS: 200 rows — Tier-1 and tier-2 suppliers across Vietnam, China, Korea, and Japan
-- BOM_ITEMS: 5,000 rows — Multi-level bill of materials for Samsung and Apple product lines
-- PURCHASE_ORDERS: 30,000 rows — 12 months of procurement orders with delivery tracking
-- QUALITY_METRICS: 100,000 rows — Incoming quality inspection data and supplier DPPM ratings
-- SUPPLY_CHAIN_DOCS: 80 rows — Contracts, audit reports, quality certificates, and compliance docs
