# Electronics Supply Chain Visibility

**Vietnam - Electronics Manufacturing**
Use case: Supply Chain Visibility

> Multi-tier supplier tracking for Vietnam's US$114B electronics export sector — Dynamic Tables build real-time supply graphs, ML.FORECAST predicts lead times, and Iceberg enables Samsung/Apple supply chain audits via Athena.

## Why Snowflake

Snowflake builds end-to-end electronics supply chain visibility — Dynamic Tables track 200 suppliers, ML.FORECAST predicts disruptions, and Iceberg shares certified data with OEM customers

- **ML.FORECAST for supplier lead time prediction** - Only demo predicting electronics supplier delays before OEM SLA breach
- **Iceberg for OEM customer audit access** - Samsung/Apple can self-service audit supply chain via Athena
- **Vietnamese electronics manufacturing context** - US$114B export sector, Samsung/Apple supply chains, Vietnamese supplier names

## What is deployed

| | |
|---|---|
| Database | `VIETNAM_ELECTRONICS_SUPPLY_CHAIN` |
| Service | `VIETNAM_ELECTRONICS_SUPPLY_CHAIN_APP` |
| Compute pool | `SEA_DEMOS_VIETNAM_POOL` |
| Dimension table | `RAW.SUPPLIERS` (20 rows) |
| Fact table | `RAW.COMPONENT_SHIPMENTS` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | VND (₫) |

Regions in play: Ho Chi Minh City, Hanoi, Binh Duong, Dong Nai, Can Tho
Segments: Semiconductor, Passive Component, Connector, Enclosure

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh VIETNAM_ELECTRONICS_SUPPLY_CHAIN
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| On-Time Delivery | `92%` | average per event |
| Component Shortage | `8 SKUs` | average per event |
| Lead Time (Avg) | `6.2 weeks` | average per event |
| Active Suppliers | `247` | total across Suppliers |
| Single-Source Risk | `₫42B exposure` | total across Suppliers |
| Buffer Stock | `8 days` | average per event |
| Alternatives Qualified | `84%` | average per event |


## Demo flow

1. Supply Chain Overview
2. Component Risk
3. OEM Compliance
4. Ask AI
5. Architecture & Data

## Talking points

- **200 suppliers** - across Vietnam, China, Korea, and Japan
- **97.2% compliance** - OEM delivery rate (target: 98-99%)
- **5,000 BOM items** - tracked across Samsung and Apple lines
- **4 suppliers** - flagged HIGH RISK
- **80 documents** - contracts and audits searchable

## Business impact

- Vietnam electronics exports reached US$114B in 2023 — largest export sector (GSO Vietnam)
- Samsung Vietnam accounts for ~50% of Samsung global smartphone production (Samsung Vietnam)
- Supply chain visibility reduces lead time variability by 50% (Gartner)
- Vietnam FDI in electronics: US$8.5B in 2023 from Korea, Japan, and Taiwan (MPI Vietnam)

---
Generated from `generator/demo_specs/aws-vietnam-electronics-supply-chain.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-vietnam-electronics-supply-chain` instead.
