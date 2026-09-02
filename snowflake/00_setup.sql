-- Generated from generator/demo_specs/aws-vietnam-electronics-supply-chain.json
-- Regenerate with: python3 generator/gen_repo_docs.py aws-vietnam-electronics-supply-chain
-- This is the schema that is actually deployed for VIETNAM_ELECTRONICS_SUPPLY_CHAIN.

-- VIETNAM_ELECTRONICS_SUPPLY_CHAIN  (Electronics Supply Chain Visibility)
-- generated from generator/demo_specs/aws-vietnam-electronics-supply-chain.json - do not hand-edit
CREATE DATABASE IF NOT EXISTS VIETNAM_ELECTRONICS_SUPPLY_CHAIN;
CREATE SCHEMA IF NOT EXISTS VIETNAM_ELECTRONICS_SUPPLY_CHAIN.RAW;
CREATE SCHEMA IF NOT EXISTS VIETNAM_ELECTRONICS_SUPPLY_CHAIN.CURATED;
CREATE SCHEMA IF NOT EXISTS VIETNAM_ELECTRONICS_SUPPLY_CHAIN.APP;
USE DATABASE VIETNAM_ELECTRONICS_SUPPLY_CHAIN;

-- 5 real regions; entity names carry their region so the two always agree
