# Interview Story — Knowledge Agent

**Project:** Knowledge Agent: Human-in-the-Loop Retrieval System for High-Stakes Decision Support  
**Format:** STAR + consulting case study framing · **Mikin Macwan LLC** · **2026**

> Flagship anonymized case study. Results = artifacts created and strategy designed—not production deployment.

---

## STAR narrative

### Situation

Frontline staff in high-stakes support environments—housing, crisis referral, benefits navigation—must answer complex questions in real time, often while a caller or client is present. Approved policies and referral guides exist, but they are scattered across PDFs, wikis, spreadsheets, and supervisor memory. Generic AI chatbots are a poor fit: they optimize for fluency, not accountability, and they cannot cite approved sources or escalate safely when uncertain.

I wanted a **flagship case study for Mikin Macwan LLC** that shows how I lead **0→1 AI products where trust matters more than demo polish**—relevant for AI PM roles and consulting-driven product leadership.

### Task

Design and document a complete product concept for a **human-in-the-loop retrieval system** that helps staff find approved, cited information quickly—without automating decisions, clinical judgment, or client-facing interaction.

Deliverables had to be **credible to hiring managers**: not slides alone, but PRD-level scope, evaluation strategy, sample corpus, prototype specs, and release gates— all anonymized and clearly labeled as portfolio work.

### Action

I structured the project as a full 0→1 product lifecycle:

1. **Framed the opportunity** — quantified lookup friction, defined personas, and wrote explicit non-goals (no clinical AI, no client-facing bot, no autonomous triage).

2. **Defined the product** — PRD with cite-or-silence rules, confidence thresholds, escalation paths, and acceptance criteria.

3. **Designed the system** — RAG architecture over an approved corpus only; guardrails for out-of-scope clinical queries; human escalation as a first-class workflow.

4. **Built evaluation strategy** — 50-scenario golden dataset covering housing, benefits, behavioral health, DV, OOS clinical, ambiguous queries, and low-confidence cases; scorecard with alpha/beta/GA thresholds; sample eval run with pass/fail outcomes.

5. **Created product artifacts** — 30-document fictional sample corpus; end-to-end agent trace; 4-screen UI and Figma copy specs; metrics dashboard mock with sample data.

6. **Proposed rollout** — alpha → beta → GA plan with training, change management, and corpus stewardship—not a "ship and hope" launch.

### Result

**Portfolio-ready product package completed**, including:

| Artifact | Outcome |
| --- | --- |
| Strategy + PRD | Scoped MVP with clear non-goals and risks |
| Golden dataset | 50 anonymized eval scenarios with expected behaviors |
| Sample corpus | 30 retrieval-ready documents with metadata schema |
| Eval run sample | 8 scored examples; sample pass rate 8/8 on stratified subset |
| UI / visual specs | Architecture diagram, dashboard spec, Figma screen copy |
| Launch plan | Phased rollout with eval gates before expansion |

**Risks identified:** corpus gaps, stale sources, conflicting documents, OOS clinical queries, over-reliance on medium-confidence answers, PII in queries.

**Release recommendation (sample eval):** Continue alpha expansion; defer beta until full golden-set regression and steward sprint on known corpus conflicts.

*No production deployment or measured real-world impact is claimed.*

### Reflection

The hardest product decision was **scope discipline**: saying no to client-facing mode, cross-session memory, and automated risk scoring—features that demo well but erode trust. The most valuable artifact was the **golden dataset**, because it forces explicit expectations before anyone writes prompt engineering hacks.

If interviewed, I lead with: *"Humans decide. The agent retrieves. Eval gates before corpus expansion."* That sentence encodes the product strategy.

---

## What I would do next if funded

| Phase | Work |
| --- | --- |
| **Validation** | 8–12 contextual interviews with frontline staff and supervisors (fictional org → real users in target domain) |
| **Alpha build** | Staging RAG stack against sample corpus; golden-set replay mode |
| **Eval ops** | Weekly SME spot checks; red-team cadence; regression on every corpus change |
| **Design** | High-fidelity Figma prototype from screen copy; usability test with 5 staff |
| **Corpus** | Steward workflow live; Tier A freshness SLA; conflict resolution for RD-001 vs RD-009 |
| **Beta gate** | Full 50-row golden run; zero critical OOS failures; TLSR ≥ target on sample harness |

---

## Tradeoffs I made

| Tradeoff | Choice | Rationale |
| --- | --- | --- |
| Fluency vs grounding | Grounding | High-stakes context; cite-or-silence non-negotiable |
| Automation vs escalation | Escalation | Low confidence is a product state, not a bug |
| Corpus breadth vs quality | Quality | 30 governed docs > 300 ungoverned docs for trust |
| Client-facing vs staff-only | Staff-only | Reduces risk; staff filter before client communication |
| Cross-session memory | No memory in MVP | Privacy + predictability; staff restate query |
| Build vs document | Document-first portfolio | Demonstrates PM thinking without implying shipped product |

---

## What I would measure in production

*Targets for a hypothetical deployment—not claims about this portfolio.*

| Metric | Why |
| --- | --- |
| **TLSR** (Trusted Lookup Success Rate) | North Star: helpful cited answer or appropriate escalation |
| **Grounding pass rate** | SME-labeled sample; block release if below gate |
| **Hallucination rate** | Unsupported claims / total factual sentences |
| **Escalation accuracy** | Appropriate vs missed vs unnecessary |
| **Time to answer** (p95 latency) | UX under stress |
| **Time saved per lookup** | Outcome vs baseline time-motion study |
| **Staff satisfaction** | Weekly pulse; trust in citations |
| **Corpus freshness** | Tier A/B docs within review SLA |
| **Safety incidents** | OOS clinical content shown; inappropriate guarantees |

All would be instrumented with audit logs: query_id, citations, confidence, escalation flag, feedback.

---

## What this demonstrates about my AI PM skills

| Skill | Evidence in portfolio |
| --- | --- |
| **0→1 framing** | Opportunity assessment, non-goals, MVP scope |
| **Trust-first AI design** | Cite-or-silence, escalation UX, OOS guardrails |
| **Eval-driven development** | Golden dataset, scorecard, sample runs, release gates |
| **Agent/RAG literacy** | Architecture diagram, KB metadata, retrieval ranking |
| **Metrics that balance adoption & safety** | TLSR, grounding, hallucination—not query volume |
| **Cross-functional artifacts** | PRD, UI copy, corpus, dashboard spec, rollout plan |
| **Executive communication** | Case study, two-pager, recruiter pitch |
| **Intellectual honesty** | Clear disclaimers; sample data labeled; no deployment claims |

---

## Suggested interview prompts this story answers

- "Tell me about a 0→1 AI product you designed."  
- "How do you think about evals for LLM products?"  
- "How would you handle low confidence or hallucinations?"  
- "What's your approach to AI in regulated or high-stakes contexts?"  
- "Show me how you work with design and engineering on an agent product."

---

## Related artifacts

- Case study: [`CASE-STUDY.md`](CASE-STUDY.md)
- Recruiter pitch: [`RECRUITER-PITCH.md`](RECRUITER-PITCH.md)
- Eval run sample: [`06-evaluations/evaluation-run-sample.md`](06-evaluations/evaluation-run-sample.md)
