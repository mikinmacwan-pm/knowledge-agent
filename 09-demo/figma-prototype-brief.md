# Figma Prototype Brief — Knowledge Agent

**Project:** Knowledge Agent: Human-in-the-Loop Retrieval System for High-Stakes Decision Support  
**Version:** 1.0 · **Fidelity:** High-fidelity portfolio prototype · **Platform:** Desktop staff sidebar (1440×900)

> *Anonymized portfolio artifact. All copy, org names, and metrics are fictional.*

---

## Prototype goals

| Goal | Success signal |
| --- | --- |
| Show trust-first UX in 60 seconds | Citations + confidence visible without scrolling |
| Demonstrate escalation as product feature | Escalate CTA on every results screen |
| Support recruiter demo | 4 linked frames, no login required in walkthrough mode |
| Align eng/design on MVP scope | Component list maps 1:1 to PRD |

**Design north star:** *Staff should feel faster—not replaced.*

---

## Global design system (prototype)

| Token | Value | Usage |
| --- | --- | --- |
| Primary | `#2563EB` | Submit, primary CTAs |
| Warning | `#D97706` | Medium confidence, stale source |
| Danger | `#DC2626` | Low confidence, OOS block |
| Surface | `#F8FAFC` | Page background |
| Text primary | `#0F172A` | Body copy |
| Font | Inter / system sans | 14px body, 16px headings |
| Radius | 8px cards, 6px inputs | Consistent with internal tools |

**Persistent elements (all screens):**
- Top bar: product name + role badge (`Frontline · Region B`)
- Footer disclaimer: *"You decide what to share with the caller."*
- No chatbot avatar or anthropomorphic persona

---

## Screen flow

```mermaid
flowchart LR
    S1[1. Query Input] -->|Submit| S2[2. Answer Results]
    S2 -->|Citation [n]| S3[3. Citation Drawer]
    S2 -->|Escalate| S4[4. Escalation Flow]
    S3 -->|Close| S2
    S4 -->|Submit| S2
```

**Figma file structure (recommended):**
```
📁 Knowledge Agent — Portfolio Prototype
  📄 Cover (project summary)
  🖼 Screen 1 — Query Input
  🖼 Screen 2 — Answer Results (happy path)
  🖼 Screen 2b — Answer Results (low confidence variant)
  🖼 Screen 3 — Citation Drawer
  🖼 Screen 4 — Escalation Flow
  🧩 Components (buttons, badges, citation row, banner)
```

---

## Screen 1 — Query Input

### Purpose

Let trained staff submit a natural-language question in under 15 seconds while reinforcing scope boundaries before retrieval runs.

### Layout

```
┌────────────────────────────────────────────────────────┐
│ Knowledge Agent                    Frontline · Region B │
├────────────────────────────────────────────────────────┤
│ ℹ This agent retrieves approved information. It does   │
│   not make decisions.                                  │
├────────────────────────────────────────────────────────┤
│ Ask a question about approved policies, referrals, or    │
│ eligibility documents…                                 │
│ ┌────────────────────────────────────────────────────┐ │
│ │                                                    │ │
│ │  [multiline input — 4 rows]                      │ │
│ │                                                    │ │
│ └────────────────────────────────────────────────────┘ │
│                                                        │
│ Example queries                                        │
│ ┌─────────────────────┐ ┌──────────────────────────┐  │
│ │ Transitional housing│ │ Food pantry schedule     │  │
│ │ ages 18–24 Region B │ │ Region B this week       │  │
│ └─────────────────────┘ └──────────────────────────┘  │
│ ┌─────────────────────┐ ┌──────────────────────────┐  │
│ │ DV safe shelter     │ │ Veteran rental assistance│  │
│ │ referral steps      │ │ intake checklist         │  │
│ └─────────────────────┘ └──────────────────────────┘  │
│                                                        │
│              [ Submit query ]                            │
├────────────────────────────────────────────────────────┤
│ Recent (last 7 days) · Do not paste client names or IDs│
└────────────────────────────────────────────────────────┘
```

### User actions

| Action | Result |
| --- | --- |
| Type query | Free text, max 500 characters |
| Tap example chip | Pre-fills editable template |
| Submit | Validates → loading → Screen 2 |
| Open help (`?`) | Modal: when to use / when to escalate |

### Key components

| Component | Spec |
| --- | --- |
| Scope reminder banner | Always visible; blue info style |
| Query textarea | Auto-focus; placeholder as above |
| Example chips | 4 in-scope templates; tap to fill |
| Submit button | Disabled when empty; spinner on submit |
| PII warning | Subtext under recent queries |

### Edge cases

| Case | Treatment |
| --- | --- |
| Empty submit | Inline error: "Enter a question to search approved sources." |
| PII detected (SSN, email) | Block submit; red inline alert |
| Offline | Retry banner + copy query action |
| OOS pre-check (optional v2) | Soft warning before submit for obvious clinical patterns |

### Success criteria

- Median time-to-submit ≤15s for returning users  
- 100% of sessions show scope reminder without dismiss  
- Example chip usage ≥25% in usability tests (target)

### Suggested copy

| Element | Copy |
| --- | --- |
| Scope banner | **This agent retrieves approved information. It does not make decisions.** |
| Placeholder | Ask a question about approved policies, referrals, or eligibility documents… |
| Submit | Submit query |
| PII subtext | Do not paste client names, case IDs, or contact information. |
| Help modal title | When to use Knowledge Agent |
| Help body | Use for approved resource lookups during live interactions. Escalate when unsure, when sources conflict, or when the question requires clinical or legal judgment. |

---

## Screen 2 — Answer / Results

### Purpose

Present a scannable, cited answer staff can verify in under 30 seconds—plus clear paths to sources and escalation.

### Layout (happy path — G-001 demo state)

```
┌────────────────────────────────────────────────────────┐
│ ← New query              Confidence: MEDIUM  🟡  0.68    │
├────────────────────────────────────────────────────────┤
│ SUMMARY                                                │
│ For a 19-year-old couch surfing in Region B, review:   │
│ • Program Horizon — transitional housing, ages 18–24 [1]│
│ • Crisis shelter via Housing Line if immediate need [2] │
│ Verify bed availability before promising options.      │
├────────────────────────────────────────────────────────┤
│ RECOMMENDED RESOURCES                                  │
│ Program Horizon · Transitional · Region B        [→]   │
│ Housing Line · Crisis beds · 24/7                [→]   │
├────────────────────────────────────────────────────────┤
│ ELIGIBILITY (from sources)                             │
│ • Region B residency or documented connection          │
│ • Age 18–24 for Program Horizon [1]                    │
├────────────────────────────────────────────────────────┤
│ CONTACT                                                │
│ Housing Line: 800-555-0142 (24/7) [2]                  │
│ Program Horizon intake: Mon–Fri 9–5 [1]                │
├────────────────────────────────────────────────────────┤
│ CITATIONS                                              │
│ [1] Emergency Housing Resource Guide §2.4        [→]   │
│ [2] Active Escalation SOP §6.1 (crisis path)     [→]   │
├────────────────────────────────────────────────────────┤
│ [ Open all sources ]  [ Escalate to supervisor ]       │
│ 👍 Helpful   👎 Not helpful                            │
├────────────────────────────────────────────────────────┤
│ You decide what to share with the caller.              │
└────────────────────────────────────────────────────────┘
```

### User actions

| Action | Result |
| --- | --- |
| Read summary | Inline citation superscripts |
| Tap resource row | Opens citation drawer for primary source |
| Tap citation `[n]` | Screen 3 drawer |
| Escalate | Screen 4 pre-filled |
| Thumbs up/down | Logs feedback + optional reason |
| Copy summary | Clipboard with citations appended |

### Key components

| Component | Spec |
| --- | --- |
| Confidence badge | HIGH (green) / MEDIUM (amber) / LOW (red) + numeric score |
| Summary block | Max 5 bullets; cite-or-silence enforced |
| Recommended resources | Linked program names with type tags |
| Eligibility block | Quoted thresholds only—no determination language |
| Contact block | Phone/hours from corpus only |
| Citation list | Title + section + open drawer |
| Escalate button | Secondary emphasis; always visible |

### Edge cases

| Case | Treatment |
| --- | --- |
| Low confidence (<0.55) | Red badge; "Escalation recommended" banner |
| OOS clinical query | Block answer; show crisis protocol card + auto-escalate |
| Zero results | "No approved match" + escalation CTA; no synthesis |
| Stale source (>12 mo) | Amber freshness chip on affected citations |
| Conflicting sources | Conflict banner linking both citations |

### Success criteria

- p95 time-to-first-content <3s (prototype: simulated delay 1.5s)  
- All factual bullets have visible citation index  
- Escalate reachable in 1 click from results

### Suggested copy

| Element | Copy |
| --- | --- |
| Confidence HIGH | **High confidence** — Sources strongly match your question. |
| Confidence MEDIUM | **Medium confidence** — Verify citations before sharing. |
| Confidence LOW | **Low confidence** — Escalation recommended. Do not rely on this summary alone. |
| Zero results | No approved sources matched this question. Escalate or rephrase. |
| OOS block | This question requires clinical judgment. Use crisis protocol and escalate. |
| Escalate CTA | Escalate to supervisor |

---

## Screen 3 — Citation Drawer

### Purpose

Let staff inspect exact source evidence—version, freshness, and quoted text—before using information client-facing.

### Layout (slide-over, 480px width)

```
┌──────────────────────────────────────┐
│ ✕                                    │
│ Emergency Housing Resource Guide     │
│ Resource Directory · Region B        │
├──────────────────────────────────────┤
│ Last reviewed: 2026-04-15            │
│ Owner: Resource Steward · Region B   │
│ Approved for agent use: Yes          │
├──────────────────────────────────────┤
│ WHY THIS SOURCE                      │
│ Matched: "transitional housing       │
│ ages 18–24 Region B" (score 0.91)    │
├──────────────────────────────────────┤
│ QUOTED EVIDENCE — §2.4               │
│ ┌──────────────────────────────────┐ │
│ │ Program Horizon serves adults    │ │
│ │ ages 18–24 with documented       │ │
│ │ Region B connection. Transitional│ │
│ │ beds require intake Mon–Fri 9–5. │ │
│ │ [highlighted chunk]              │ │
│ └──────────────────────────────────┘ │
├──────────────────────────────────────┤
│ [ Open approved source ]             │
│ [ Report outdated ]                  │
│                                      │
│ ◀ [1]  [2] ▶  Navigate citations     │
└──────────────────────────────────────┘
```

### User actions

| Action | Result |
| --- | --- |
| Read quoted evidence | Highlighted retrieval chunk |
| Open approved source | External doc portal (new tab) |
| Report outdated | Pre-filled steward ticket |
| Navigate citations | Prev/next between [1][2][3] |
| Close | Return to Screen 2 |

### Key components

| Component | Spec |
| --- | --- |
| Source header | Title, source_type, geography |
| Freshness row | last_reviewed date + stale warning if applicable |
| Confidence explanation | Plain-language match rationale + retrieval score |
| Quoted evidence | Yellow highlight on matched span |
| Report outdated | Creates steward queue item |

### Edge cases

| Case | Treatment |
| --- | --- |
| Retired document | "Retired 2025-11-01. Successor: [link]." |
| Deep link broken | Error state + supervisor link |
| Chunk lacks context | "View full section" expands ±2 paragraphs |

### Success criteria

- Full source metadata visible without scroll  
- Open approved source ≤2 taps from summary  
- Report outdated completes in <10s user time

### Suggested copy

| Element | Copy |
| --- | --- |
| Confidence explanation | **Why this source:** Retrieved because it matches your question about *[topic]*. Relevance score: 0.91. |
| Stale warning | This document is past review date. Verify before use or report outdated. |
| Report outdated | Report outdated |
| Retired doc | This version was retired. Do not use for new lookups. |

---

## Screen 4 — Escalation Flow

### Purpose

Route low-confidence, conflicting, or out-of-scope queries to a human with full retrieval context—turning failure modes into eval signal.

### Layout (low-confidence / conflicting-source state — G-049)

```
┌────────────────────────────────────────────────────────┐
│ Escalate for human review                              │
├────────────────────────────────────────────────────────┤
│ ⚠ Why escalation is suggested                          │
│ • Confidence score 0.42 (below 0.55 threshold)         │
│ • Conflicting income limits in two approved sources    │
│ • Staff should not choose between versions alone       │
├────────────────────────────────────────────────────────┤
│ Reason (required)                                      │
│ ○ Low confidence   ● Conflicting sources               │
│ ○ Out of scope       ○ No approved match               │
│ ○ Other                                                │
├────────────────────────────────────────────────────────┤
│ Route to                                               │
│ ● Supervisor (default)   ○ Subject matter expert       │
├────────────────────────────────────────────────────────┤
│ Your question (editable)                               │
│ ┌────────────────────────────────────────────────────┐ │
│ │ Income limits for Horizon vs Community Bridge…     │ │
│ └────────────────────────────────────────────────────┘ │
│ Notes for reviewer (optional)                          │
│ ┌────────────────────────────────────────────────────┐ │
│ │ Caller waiting on line — need quick clarification  │ │
│ └────────────────────────────────────────────────────┘ │
├────────────────────────────────────────────────────────┤
│ Attached context (read-only)                           │
│ • Top 3 retrieved chunks + scores                      │
│ • Agent draft summary (if generated)                   │
│ • Citations: RD-001 §2.4, RD-009 §5.1 (conflict)       │
├────────────────────────────────────────────────────────┤
│ Feedback for evaluation (optional)                     │
│ □ Add this query to golden dataset review queue        │
│ □ Flag corpus gap for steward                          │
├────────────────────────────────────────────────────────┤
│ [ Submit escalation ]              [ Cancel ]          │
│ Typical response: ~15 min during shift                 │
└────────────────────────────────────────────────────────┘
```

### User actions

| Action | Result |
| --- | --- |
| Select reason | Required radio |
| Choose route | Supervisor (default) or SME queue |
| Edit question | Pre-filled from Screen 1 |
| Add notes | Optional context for reviewer |
| Toggle eval feedback | Flags for golden-set / corpus gap |
| Submit | Ticket ID shown; audit log entry |

### Key components

| Component | Spec |
| --- | --- |
| Trigger explanation | Bulleted why (confidence, conflict, OOS) |
| Reason codes | LOW_CONFIDENCE, CONFLICT, OOS, NO_MATCH, OTHER |
| Route selector | Supervisor vs SME (dropdown by domain in v2) |
| Context bundle | Auto-attached chunks, scores, draft |
| Eval feedback toggles | Feeds evaluation pipeline |
| SLA hint | Expected response time |

### Edge cases

| Case | Treatment |
| --- | --- |
| Auto-escalation (OOS) | Reason pre-selected; crisis resources shown |
| Duplicate (<10 min) | Warn: "Similar escalation pending" |
| After hours | Queue message + on-call routing |
| Supervisor resolves | Phase 2: in-app notify staff |

### Success criteria

- Escalation submit median <20s  
- 100% of tickets include retrieval context bundle  
- Eval feedback capture on ≥40% of escalations (beta target)

### Suggested copy

| Element | Copy |
| --- | --- |
| Header | Escalate for human review |
| Conflict trigger | Two approved sources disagree. A supervisor should confirm which version applies. |
| Low confidence trigger | Confidence is below the safe threshold. Verify with a supervisor before sharing. |
| Submit success | Escalation submitted · Ticket #ESC-2026-0847 |
| Eval toggle | Add this query to golden dataset review queue |

---

## Prototype variants to build in Figma

| Frame | Scenario | Demo use |
| --- | --- | --- |
| 2 — Happy path | G-001 housing | Default recruiter walkthrough |
| 2b — Low confidence | G-049 conflict | Trust / escalation story |
| 2c — OOS block | G-013 clinical | Safety guardrail story |
| 4 — Auto-escalate | G-012 BH safety | Sensitive routing story |

---

## Handoff checklist

- [ ] Link all 4 screens with Figma prototype connections  
- [ ] Component variants: confidence badges (3 states)  
- [ ] Include annotation layer for PM notes (escalation thresholds)  
- [ ] Export 4 PNGs for portfolio PDF / LinkedIn carousel  
- [ ] Pair with [`end-to-end-walkthrough.md`](end-to-end-walkthrough.md) for narrative  

---

## Related artifacts

- UI spec (engineering): [`demo-ui-spec.md`](demo-ui-spec.md)  
- Walkthrough trace: [`end-to-end-walkthrough.md`](end-to-end-walkthrough.md)  
- Sample corpus: [`../sample-knowledge-base/`](../sample-knowledge-base/)  
- PRD: [`../04-prd/knowledge-agent-prd.md`](../04-prd/knowledge-agent-prd.md)
