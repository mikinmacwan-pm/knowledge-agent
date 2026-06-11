# Figma Screen Copy — Knowledge Agent

**Project:** Knowledge Agent: Human-in-the-Loop Retrieval System for High-Stakes Decision Support  
**Version:** 1.0 · **Purpose:** Exact UI copy for portfolio Figma prototype

> Copy below is **fictional and anonymized**. Paste directly into Figma text layers.

---

## Global copy (all screens)

| Element | Copy |
| --- | --- |
| Product name | Knowledge Agent |
| Role badge | Frontline · Region B |
| Footer disclaimer | You decide what to share with the caller. |
| Loading state | Searching approved sources… |
| Error — network | Connection lost. Retry or copy your question for a supervisor. |
| Error — timeout | This is taking longer than expected. Retry or escalate. |

---

## Screen 1 — Query Input

### Header & scope

| Element | Copy |
| --- | --- |
| Page title | Knowledge Agent |
| Scope banner (primary) | **This agent retrieves approved information. It does not make decisions.** |
| Input label | Your question |
| Placeholder | Ask about approved policies, referrals, or eligibility documents… |
| PII warning | Do not paste client names, case IDs, or contact information. |
| Section label | Example queries |
| Recent section | Recent queries (last 7 days) |

### Example query chips

| Chip |
| --- |
| Transitional housing ages 18–24, Region B |
| Food pantry schedule Region B this week |
| DV safe shelter referral steps |
| Veteran rental assistance intake checklist |

### Buttons & actions

| Element | Copy |
| --- | --- |
| Primary button | Submit query |
| Help link | Help |
| Help modal title | When to use Knowledge Agent |
| Help modal body | Use during live interactions to find approved resource and policy information. Escalate when unsure, when sources conflict, or when the question requires clinical, legal, or safety-planning judgment. |
| Help modal close | Got it |

### Empty & validation states

| State | Copy |
| --- | --- |
| Empty submit | Enter a question to search approved sources. |
| PII detected | Remove client identifiers before submitting. |
| Character limit | Maximum 500 characters. |

### Success criteria hint (optional, dev only)

| Element | Copy |
| --- | --- |
| Dev annotation | Target: submit in ≤15s |

---

## Screen 2 — Answer / Results

### Header & confidence

| Element | Copy |
| --- | --- |
| Back link | New query |
| Confidence — HIGH | **High confidence** — Sources strongly match your question. Verify citations before sharing. |
| Confidence — MEDIUM | **Medium confidence** — Verify all citations before sharing with the caller. |
| Confidence — LOW | **Low confidence** — Escalation recommended. Do not rely on this summary alone. |
| Confidence numeric | Confidence: 0.68 |

### Content sections

| Section label | Copy |
| --- | --- |
| Summary | Summary |
| Recommended resources | Recommended resources |
| Eligibility | Eligibility (from sources) |
| Contact | Contact |
| Citations | Citations |

### Sample summary body (demo state G-001)

| Element | Copy |
| --- | --- |
| Bullet 1 | Program Horizon — transitional housing for ages 18–24 with Region B connection [1] |
| Bullet 2 | Crisis shelter via Housing Line if immediate need tonight [2] |
| Closing line | Verify bed availability before sharing options with the caller. |

### Sample eligibility lines

| Copy |
| --- |
| Region B residency or documented connection required |
| Age 18–24 for Program Horizon [1] |

### Sample contact lines

| Copy |
| --- |
| Housing Line: 800-555-0142 (24/7) [2] |
| Program Horizon intake: Mon–Fri, 9 AM – 5 PM [1] |

### Buttons & feedback

| Element | Copy |
| --- | --- |
| Open sources | Open all sources |
| Escalate | Escalate to supervisor |
| Thumbs up | Helpful |
| Thumbs down | Not helpful |
| Copy action | Copy summary with citations |

### Warning & empty states

| State | Copy |
| --- | --- |
| Stale source banner | One or more sources may be outdated. Verify before use. |
| Conflict banner | Approved sources disagree on this topic. Escalate before citing to the caller. |
| Zero results | No approved sources matched this question. Try rephrasing or escalate to a supervisor. |
| OOS clinical block | This question requires clinical judgment and is out of scope. Use crisis protocol and escalate. |
| Abstain (corpus gap) | No approved sources for this region or topic in the current corpus. Escalate and flag corpus gap. |

---

## Screen 3 — Citation Drawer

### Header & metadata

| Element | Copy |
| --- | --- |
| Close | ✕ |
| Sample title | Emergency Housing Resource Guide |
| Source type | Resource Directory · Region B |
| Last reviewed | Last reviewed: 2026-04-15 |
| Owner | Owner: Resource Steward · Region B |
| Approved badge | Approved for agent use: Yes |

### Confidence explanation

| Element | Copy |
| --- | --- |
| Section label | Why this source |
| Explanation | Retrieved because it matches your question about transitional housing for ages 18–24 in Region B. Relevance score: 0.91. |

### Quoted evidence

| Element | Copy |
| --- | --- |
| Section label | Quoted evidence — §2.4 |
| Sample quote | Program Horizon serves adults ages 18–24 with documented Region B connection. Transitional beds require intake Mon–Fri, 9 AM – 5 PM. Bed availability varies daily — never guarantee placement. |

### Actions

| Element | Copy |
| --- | --- |
| Open source | Open approved source |
| Report outdated | Report outdated |
| Navigation | Navigate citations |
| View full section | View full section |

### Edge states

| State | Copy |
| --- | --- |
| Stale warning | This document is past its review date. Verify before use or report outdated. |
| Retired doc | This version was retired on 2025-11-01. View successor document. |
| Broken link | Unable to open source. Escalate to supervisor. |

---

## Screen 4 — Escalation Flow

### Header & trigger explanation

| Element | Copy |
| --- | --- |
| Page title | Escalate for human review |
| Warning header | Why escalation is suggested |
| Low confidence reason | Confidence score is below the safe threshold (0.42). Verify with a supervisor before sharing. |
| Conflict reason | Two approved sources show different information. A supervisor should confirm which version applies. |
| OOS reason | This question is out of scope for automated retrieval. A supervisor or subject matter expert should respond. |
| No match reason | No approved sources matched this question. A reviewer can help locate the right resource. |

### Form fields

| Element | Copy |
| --- | --- |
| Reason label | Reason (required) |
| Reason — low confidence | Low confidence |
| Reason — conflict | Conflicting sources |
| Reason — OOS | Out of scope |
| Reason — no match | No approved match |
| Reason — other | Other |
| Route label | Route to |
| Route — supervisor | Supervisor (default) |
| Route — SME | Subject matter expert |
| Question label | Your question (editable) |
| Notes label | Notes for reviewer (optional) |
| Notes placeholder | e.g., Caller waiting on line — need quick clarification |
| Context label | Attached context (read-only) |
| Eval label | Feedback for evaluation (optional) |
| Eval checkbox 1 | Add this query to golden dataset review queue |
| Eval checkbox 2 | Flag corpus gap for steward |

### Buttons & confirmation

| Element | Copy |
| --- | --- |
| Submit | Submit escalation |
| Cancel | Cancel |
| SLA hint | Typical response: ~15 minutes during shift |
| Success | Escalation submitted · Ticket #ESC-2026-0847 |
| Duplicate warning | A similar escalation was submitted recently. Continue anyway? |

---

## Copy principles (for designers)

1. **Plain language** — no "AI magic" or anthropomorphic persona  
2. **Accountability** — staff decide; agent retrieves  
3. **Escalation is normal** — not framed as error  
4. **No guarantees** — never promise beds, eligibility, or outcomes  
5. **Sample phone numbers** — 800-555-0xxx range only  

---

## Related artifacts

- Figma prototype brief: [`../09-demo/figma-prototype-brief.md`](../09-demo/figma-prototype-brief.md)
- UI spec: [`../09-demo/demo-ui-spec.md`](../09-demo/demo-ui-spec.md)
