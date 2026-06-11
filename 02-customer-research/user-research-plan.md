# User Research Plan — Knowledge Agent

**Project:** Knowledge Agent: Human-in-the-Loop Retrieval System for High-Stakes Decision Support  
**Version:** 1.0 · **Phase:** Pre-MVP discovery · **Anonymized portfolio**

---

## Research goals

1. **Map the lookup workflow** — systems, time, failure points, escalation triggers.
2. **Validate pain severity** — is retrieval a top-3 daily friction?
3. **Define trust requirements** — what would make staff *use* vs. *ignore* an AI assistant?
4. **Identify MVP corpus** — which 2–3 source types cover 70% of high-frequency lookups?
5. **Test language** — how staff naturally phrase questions (for golden dataset design).

---

## Target interviewees

| Role | n | Rationale |
| --- | --- | --- |
| Frontline advocate (1–5 yrs tenure) | 8 | Core user; mixed KB familiarity |
| Frontline advocate (veteran, 5+ yrs) | 4 | Tribal knowledge baseline |
| Intake specialist | 4 | Eligibility-heavy queries |
| Supervisor / team lead | 5 | Escalation + QA perspective |
| Content steward / ops | 3 | Ingestion + freshness reality |
| L&D / onboarding lead | 2 | New hire ramp signal |

**Total:** 26 interviews (60 min each) + 10 contextual observations (shadowing simulated sessions).

**Recruitment criteria:** Active caseload, mixed program exposure, no prior involvement in AI pilot messaging.

---

## Interview questions

### Workflow & pain

1. Walk me through the last time you couldn't answer a question immediately. What did you do?
2. Which systems did you open—in what order? How long did it take?
3. How do you know a document is the *current* version?
4. When do you ask a supervisor vs. keep searching?
5. What questions do you ask repeatedly that you wish were easier to find?

### Trust & safety

6. What would make you **trust** an AI-generated summary of internal docs?
7. What would make you **never use** it again after one bad experience?
8. How should the system behave when it's not sure?
9. Should clients ever see AI output directly? (Hypothesis: no in MVP.)

### Language & content

10. Show me how you'd type a question if you had a "Google for our policies."
11. Which topics must **never** be answered without human review?
12. Which source do you treat as gospel vs. "starting point"?

### Success definition

13. If this saved you 5 minutes per lookup, where would that time go?
14. What metric would your manager care about?

---

## Hypotheses

| ID | Hypothesis | Falsification signal |
| --- | --- | --- |
| H1 | Median non-routine lookup exceeds 5 minutes | Majority report <3 min |
| H2 | Supervisors field 5+ repeat lookup questions/week | Supervisors report <2 |
| H3 | Staff will not trust answers without citations | Users say summaries alone are fine |
| H4 | Referral + eligibility queries dominate volume | Other categories >50% |
| H5 | "Escalate when unsure" increases adoption vs. guessing | Users prefer best-effort answers |
| H6 | New hires avoid KB due to navigation, not content quality | Veterans also avoid KB equally |

---

## Research outputs

| Deliverable | Format | Owner |
| --- | --- | --- |
| Journey map (current vs. future) | Miro / FigJam | PM + Design |
| Thematic synthesis (top 10 pains) | 2-page memo | PM |
| Query taxonomy (20 categories) | Spreadsheet | PM + Research ops |
| Golden prompt seed list (50 utterances) | CSV | PM |
| Trust requirements checklist | PRD input | PM + Compliance liaison |
| MVP corpus recommendation | 1-pager | PM + Content steward |
| Persona v1 (3 primary) | Below | PM |

**Timeline:** 4 weeks — Weeks 1–2 interviews; Week 3 synthesis; Week 4 readout + PRD lock.

---

## Persona drafts

### Persona A — Jordan, Frontline Advocate

| Attribute | Detail |
| --- | --- |
| **Tenure** | 14 months |
| **Context** | Phone-based support, 12–18 interactions/day |
| **Goal** | Keep caller engaged while finding accurate referral info |
| **Frustration** | "I know we have a housing sheet somewhere—can't find the 2026 version." |
| **Success** | Cited answer in <60 seconds; confidence to read summary verbatim |
| **AI stance** | Cautiously optimistic if citations + easy escalation |

### Persona B — Riley, Supervisor

| Attribute | Detail |
| --- | --- |
| **Tenure** | 7 years |
| **Context** | Supports 8 advocates; QA sampling |
| **Goal** | Reduce repeat interruptions; ensure consistent policy adherence |
| **Frustration** | Same eligibility question three times before lunch |
| **Success** | Staff self-serve with audit trail; escalations are genuinely ambiguous |
| **AI stance** | Supports tool if logging + source versioning are visible |

### Persona C — Sam, Content Steward

| Attribute | Detail |
| --- | --- |
| **Tenure** | 3 years in ops |
| **Context** | Maintains SOPs, referral spreadsheets, training updates |
| **Goal** | Content staff actually uses gets updated on schedule |
| **Frustration** | Published docs ≠ docs found in crisis |
| **Success** | Retrieval analytics show which assets need refresh |
| **AI stance** | Needs ingestion workflow—not "magic index everything" |

---

## Research ethics & constraints

- No recording of real client details; use fictional vignettes only.
- Staff interviews during paid time; union/participant info sheet as required by org policy (fictional process documented).
- Findings anonymized in portfolio materials.
