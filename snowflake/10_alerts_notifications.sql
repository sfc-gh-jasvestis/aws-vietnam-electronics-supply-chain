-- ============================================================================
-- 10_ALERTS_NOTIFICATIONS.SQL — Alerts for Electronics Supply Chain Visibility
-- ============================================================================
USE DATABASE ELECTRONICS_SUPPLY_CHAIN;
USE SCHEMA APP;

-- Notification integration (email)
CREATE OR REPLACE NOTIFICATION INTEGRATION aws_vietnam_electronics_supply_chain_EMAIL_INT
  TYPE = EMAIL
  ENABLED = TRUE
  ALLOWED_RECIPIENTS = ('jonathan.asvestis@snowflake.com');

-- Alert: SUPPLIER_RISK_ALERT
CREATE OR REPLACE ALERT APP.SUPPLIER_RISK_ALERT
  WAREHOUSE = ELECTRONICS_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Supplier risk score exceeds critical threshold'
IF (EXISTS (
  SELECT 1 FROM CURATED.SUPPLIER_RISK_SCORE
  WHERE 1=1 -- Condition: RISK_SCORE > 80 for any supplier
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_vietnam_electronics_supply_chain_EMAIL_INT',
    'jonathan.asvestis@snowflake.com',
    '[ALERT] Electronics Supply Chain Visibility: Supplier risk score exceeds critical threshold',
    'Supplier risk score exceeds critical threshold'
  );

ALTER ALERT APP.SUPPLIER_RISK_ALERT RESUME;

-- Alert: DELIVERY_SLA_ALERT
CREATE OR REPLACE ALERT APP.DELIVERY_SLA_ALERT
  WAREHOUSE = ELECTRONICS_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'OEM delivery SLA at risk — immediate attention required'
IF (EXISTS (
  SELECT 1 FROM CURATED.SUPPLIER_RISK_SCORE
  WHERE 1=1 -- Condition: OEM delivery compliance drops below 98%
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_vietnam_electronics_supply_chain_EMAIL_INT',
    'jonathan.asvestis@snowflake.com',
    '[ALERT] Electronics Supply Chain Visibility: OEM delivery SLA at risk — immediate attention required',
    'OEM delivery SLA at risk — immediate attention required'
  );

ALTER ALERT APP.DELIVERY_SLA_ALERT RESUME;

