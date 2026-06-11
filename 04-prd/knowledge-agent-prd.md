# PRD — Knowledge Agent (MVP)

**Project:** Knowledge Agent: Human-in-the-Loop Retrieval System for High-Stakes Decision Support  
**Version:** 1.0 · **Status:** Portfolio PRD · **Owner:** Product · **Anonymized**

> Fictional organizational context below illustrates PRD structure—not a real approval or deployment.

---

## Background

Staff supporting vulnerable populations must access approved policies, eligibility rules, and referral resources during live interactions. Information exists across multiple repositories but is difficult to retrieve quickly with verified provenance. This PRD scopes a **pilot Knowledge Agent**—read-only, staff-facing, citation-required—to reduce lookup friction without automating decisions.

---

## Goals

| Goal | Target (pilot) |
| --- | --- |
| Reduce median time-to-first-approved-answer | −40% vs. baseline |
| ≥85% staff report increased confidence in cited answers | Survey at beta end |
| Grounding accuracy on golden set | ≥92% |
| Escalation precision (appropriate escalations / all escalations) | ≥88% |
| Zero client-facing exposure in MVP | Enforced by auth + UI |

---

## Non-goals

- Clinical guidance, risk classification, or treatment recommendations
- Client-facing interfaces
- Automated outbound communication
- Write access to case systems
- Open internet retrieval

---

## User stories

### Frontline advocate

- **US-01:** As an advocate, I want to ask a natural-language question so I can get a cited summary without opening five systems.
- **US-02:** As an advocate, I want to see confidence and source dates so I can judge whether to read verbatim or verify.
- **US-03:** As an advocate, I want one-click escalation so I can involve a supervisor when the agent is unsure.
- **US-04:** As an advocate, I want to open the source document so I can confirm context the summary may omit.

### Supervisor

- **US-05:** As a supervisor, I want to see query logs with citations so I can QA answer quality.
- **US-06:** As a supervisor, I want escalation tickets with the original question and retrieved chunks so I can respond quickly.

### Content steward

- **US-07:** As a steward, I want ingestion status and freshness reports so I know which assets are indexed and current.
- **US-08:** As a steward, I want to retire a document version so it stops appearing in retrieval.

---

## Functional requirements

### Query & response

| ID | Requirement | Priority |
| --- | --- | --- |
| FR-01 | Authenticated staff can submit NL queries via web sidebar | P0 |
| FR-02 | Responses include summary + numbered citations | P0 |
| FR-03 | Each citation links to source doc + section anchor | P0 |
| FR-04 | Display confidence band (High / Medium / Low) | P0 |
| FR-05 | Display source `last_reviewed` date per citation | P0 |
| FR-06 | Low confidence auto-triggers escalation prompt | P0 |
| FR-07 | Staff can flag response (helpful / wrong / outdated) | P0 |
| FR-08 | Query history (self-only) for last 30 days | P1 |
| FR-09 | Suggested follow-up questions (from same sources) | P2 |

### Retrieval & grounding

| ID | Requirement | Priority |
| --- | --- | --- |
| FR-10 | Retrieve only from approved index | P0 |
| FR-11 | Max 5 chunks per answer; dedupe by document | P0 |
| FR-12 | Block generation if zero chunks above threshold | P0 |
| FR-13 | Detect cross-source conflict → escalation | P1 |

### Escalation

| ID | Requirement | Priority |
| --- | --- | --- |
| FR-14 | Escalation creates ticket with query, chunks, model output | P0 |
| FR-15 | Route to on-shift supervisor queue | P0 |
| FR-16 | SLA display for supervisor response (informational) | P2 |

### Admin / governance

| ID | Requirement | Priority |
| --- | --- | --- |
| FR-17 | Role-based access (staff / supervisor / steward) | P0 |
| FR-18 | Audit log: user, query, sources, confidence, timestamp | P0 |
| FR-19 | Steward dashboard: ingestion jobs, errors, stale assets | P1 |

---

## Non-functional requirements

| ID | Requirement | Target |
| --- | --- | --- |
| NFR-01 | p95 latency (query → first token) | <3s |
| NFR-02 | p95 end-to-end response | <8s |
| NFR-03 | Availability (pilot hours) | 99.5% |
| NFR-04 | Data residency | US-only infrastructure |
| NFR-05 | Encryption | TLS in transit; AES-256 at rest |
| NFR-06 | Retention | Query logs 90 days; export for audit |
| NFR-07 | Accessibility | WCAG 2.1 AA for staff UI |
| NFR-08 | No training on org data | Contractual + config enforcement |

---

## MVP scope

**In scope (Phase 1 — Alpha):**

- Web sidebar for **50 pilot users**, 1 regional site
- **3 source families:** (1) Referral directory, (2) Eligibility & intake SOPs, (3) Program one-pagers
- Citation-required answers; confidence + escalation
- Supervisor escalation queue (basic)
- Golden-set eval harness (offline)
- Staff training: 90-minute workshop + job aid

**Beta adds:**

- 200 users, 3 sites
- +Training materials index
- Flag → steward feedback loop
- Supervisor QA dashboard v1

---

## Out of scope (MVP)

- Mobile app
- Voice input / telephony integration
- CRM / case management write-back
- Client portal
- Multilingual
- Auto-suggested case notes
- Partner extranet sources

---

## Dependencies

| Dependency | Team | Risk if late |
| --- | --- | --- |
| Approved corpus export + metadata | Content stewards | No index |
| SSO / staff identity | IT | No pilot auth |
| Legal review of logging policy | Compliance | Launch delay |
| Supervisor queue tool integration | Ops | Manual escalation |
| Embedding + vector index | Engineering | Retrieval quality |
| Eval reviewer calendar (SMEs) | Program leads | No quality gate |

---

## Risks

| Risk | Likelihood | Impact | Mitigation |
| --- | --- | --- | --- |
| Hallucination despite RAG | Medium | High | Citation enforcement; abstain path; eval gates |
| Stale content indexed | High | High | Freshness metadata; steward SLAs |
| Low adoption (trust) | Medium | High | Citations, training, supervisor champions |
| Over-reliance without verification | Medium | High | UX copy; QA sampling; principle training |
| Scope creep → clinical questions | Medium | Critical | Guardrails + OOS detection + audit |

---

## Open questions

1. Minimum confidence threshold for auto-answer vs. force escalation?
2. Should Medium confidence require staff acknowledgment checkbox?
3. Per-program corpus isolation (role-based retrieval filters)?
4. Pilot success definition for GA—who signs go/no-go?

---

## Appendix: Example acceptance criteria (US-01)

**Given** an authenticated advocate on shift  
**When** they submit: *"Transitional housing options for ages 18–24 in Region B"*  
**Then** within 8s they receive a summary with ≥1 citation from Referral Directory or Eligibility SOP  
**And** each citation includes document title, version, last_reviewed date, and deep link  
**And** confidence band is displayed  
**And** the interaction is audit-logged
