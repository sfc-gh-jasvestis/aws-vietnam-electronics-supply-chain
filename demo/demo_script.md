# Demo Script: Electronics Supply Chain Visibility
## ~4-Minute Recorded Walkthrough
**Format**: Screen recording with voiceover
**Target**: Customer meeting / booth loop / social share
**Narrative**: "Snowflake builds end-to-end electronics supply chain visibility — Dynamic Tables track 200 suppliers, ML.FORECAST predicts disruptions, and Iceberg shares certified data with OEM customers"
**Demo Mode**: Open app with `?demo=true` for presenter notes

---

## Two Personas

| Persona | Role | Tool | What they care about |
|---|---|---|---|
| **Nguyen Van Minh** | VP Supply Chain | React App (SPCS) | Supplier risk, delivery SLA, Samsung/Apple compliance, component shortages |
| **Tran Thi Lan** | Procurement Manager | Amazon QuickSight | PO lead times, supplier quality metrics, cost variance, alternative sourcing |

---

## What's Built

| Layer | Component | Detail |
|---|---|---|
| **RAW** | 5 tables | SUPPLIERS (200), BOM_ITEMS (5000), PURCHASE_ORDERS (30000), QUALITY_METRICS (100000), SUPPLY_CHAIN_DOCS (80) |
| **CURATED** | 4 Dynamic Tables | SUPPLIER_RISK_SCORE, DELIVERY_COMPLIANCE, LEAD_TIME_ANALYTICS, SUPPLY_GRAPH |
| **ML** | ML.FORECAST + ML.ANOMALY_DETECTION | Forecasting + anomaly detection |
| **AI** | COMPLETE, AI_CLASSIFY, SUMMARIZE | Classification + extraction |
| **Search** | Cortex Search | 80 documents indexed |
| **Agent** | SUPPLY_CHAIN_AGENT | Semantic View + Search tools |


---

## The Story

Vietnam has become Samsung's largest global production base and a key Apple supplier, exporting USB in electronics in 2023. Managing 200 suppliers across 4 countries to meet 98-99% OEM delivery SLAs requires real-time supply chain visibility — not monthly spreadsheet reviews.

---

## Script

### [0:00–0:45] SUPPLY CHAIN OVERVIEW

**Show**: Supply Chain Overview tab

> "Two hundred suppliers across Vietnam, China, Korea, and Japan feeding Samsung and Apple product lines."

**Action**: Point at 200 suppliers and 97.2% compliance

### [0:45–1:30] COMPONENT RISK

**Show**: Component Risk tab

> "5,000 BOM items tracked — 12 critical components with single-source or China-only supply."

**Action**: Show BOM dependency tree

### [1:30–2:15] OEM COMPLIANCE

**Show**: OEM Compliance tab

> "Samsung requires 98% on-time, Apple 99% — current performance: Samsung 97.8%, Apple 96.5%."

**Action**: Show OEM compliance scorecard

### [2:15–3:00] ASK AI

**Show**: Ask AI tab

> "Nguyen asks: 'Which suppliers are flagged high risk?'"

**Action**: Type risk question

### [3:00–3:45] ARCHITECTURE & DATA

**Show**: Architecture & Data tab

> "Six Snowflake capabilities, six AWS services."

**Action**: Walk through architecture diagram


---

## Key Demo Differentiators

1. **ML.FORECAST for supplier lead time prediction** — Only demo predicting electronics supplier delays before OEM SLA breach
2. **Iceberg for OEM customer audit access** — Samsung/Apple can self-service audit supply chain via Athena
3. **Vietnamese electronics manufacturing context** — US$114B export sector, Samsung/Apple supply chains, Vietnamese supplier names


---

## Demo Prep Checklist

### Data Verification
- [ ] `SELECT COUNT(*) FROM ELECTRONICS_SUPPLY_CHAIN.RAW.SUPPLIERS` → 200
- [ ] `SELECT COUNT(*) FROM ELECTRONICS_SUPPLY_CHAIN.RAW.BOM_ITEMS` → 5000
- [ ] `SELECT COUNT(*) FROM ELECTRONICS_SUPPLY_CHAIN.RAW.PURCHASE_ORDERS` → 30000

### ML Model Verification
- [ ] `SELECT COUNT(*) FROM ELECTRONICS_SUPPLY_CHAIN.ML.LEAD_TIME_FORECAST_RESULTS` → >0

### AI/Agent Verification
- [ ] `SELECT COUNT(*) FROM ELECTRONICS_SUPPLY_CHAIN.AI.DOC_CLASSIFICATION` → 80

