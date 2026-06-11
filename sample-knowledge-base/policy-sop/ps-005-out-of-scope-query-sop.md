---
document_id: PS-005
title: Out-of-Scope Query SOP
source_type: policy_sop
geography: All regions
last_reviewed: 2026-04-05
owner: Operations Policy
approved_for_agent_use: true
escalation_required: true
---

# Out-of-Scope Query SOP

## §2.1 Prohibited agent outputs

- Clinical diagnosis or treatment recommendations
- Medication dosing advice
- Automated risk scoring (low/medium/high)
- Safety plan generation
- Legal advice
- 911 decision-making

## §3.1 Clinical block behavior

When query matches OOS clinical patterns:
1. Block answer generation
2. Display scope message
3. Auto-escalate
4. Cite this SOP as boundary reference only
