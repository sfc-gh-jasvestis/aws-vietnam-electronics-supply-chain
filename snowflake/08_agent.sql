-- ============================================================================
-- 08_AGENT.SQL — Cortex Agent for Electronics Supply Chain Visibility
-- ============================================================================
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
USE SCHEMA APP;

CREATE OR REPLACE CORTEX AGENT APP.SUPPLY_CHAIN_AGENT
  COMMENT = 'Electronics Supply Chain Visibility AI Assistant'
  MODEL = 'claude-opus-4-8'
  TOOLS = (
    SEMANTIC_VIEW_TOOL(SEMANTIC_VIEW => 'ELECTRONICS_SUPPLY_CHAIN.APP.SUPPLY_CHAIN_ANALYTICS'),    CORTEX_SEARCH_TOOL(CORTEX_SEARCH_SERVICE => 'ELECTRONICS_SUPPLY_CHAIN.SEARCH.SUPPLY_CHAIN_DOCS_SEARCH', TOOL_DESCRIPTION => 'Search documents for Electronics Manufacturing information')
  )
  SYSTEM_PROMPT = 'You are the Supply Chain Intelligence Agent for a Vietnamese electronics manufacturer supplying Samsung and Apple, managing 200 suppliers across 4 countries.';
