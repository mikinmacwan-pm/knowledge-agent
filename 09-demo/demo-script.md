# Demo Script — Knowledge Agent

**Project:** Knowledge Agent: Human-in-the-Loop Retrieval System for High-Stakes Decision Support  
**Version:** 1.0 · **Duration:** 8–10 minutes · **Audience:** Recruiters, hiring managers, product leaders

> Portfolio demo narrative using fictional personas and sample corpus data.

---

## Demo scenario

**Setting:** Regional crisis support center. A frontline advocate is on a live call with a 19-year-old experiencing housing instability who also asked about mental health resources.

**Persona:** Jordan (frontline advocate, 14 months tenure).

---

## Before workflow (2 minutes)

*Show split screen or describe—no live client data.*

| Step | What Jordan does | Friction |
| --- | --- | --- |
| 1 | Puts caller on brief hold | Time pressure |
| 2 | Opens shared drive → searches "young adult housing" | 3 folders, unclear version |
| 3 | Opens Referral spreadsheet (2025 tab?) | Unsure if current |
| 4 | Skims Crisis Intake SOP PDF | Ctrl+F "shelter" |
| 5 | Messages supervisor: "Horizon age limit again?" | Interrupt |
| 6 | Returns to call, paraphrases from memory | Consistency risk |

**Elapsed:** ~8 minutes · **Systems:** 4 · **Supervisor interrupt:** Yes

*Talk track:*  
> "The information exists. The problem is retrieval under pressure—with no proof they're looking at the right version."

---

## After workflow (4 minutes)

Jordan opens **Knowledge Agent** sidebar (staff-authenticated, internal only).

### Sample query (typed live)

> Young adult, 19, housing instability in Region B. Also asking about mental health support. What approved programs and referral paths should I review?

### Sample answer (display in UI mock)

---

**Summary**  
For ages 18–24 in Region B, approved pathways include: (1) **Program Horizon** transitional housing—requires Region B residency and age 18–24 [1]; (2) **Crisis shelter referral** via Regional Housing Line for immediate night needs [2]; (3) **Behavioral health referral** through Partnership Care for non-crisis support [3]. Bed availability is not confirmed in static documentation—verify via Housing Line before promising placement.

**Citations**  
[1] Referral Directory — Region B (v2026.03, reviewed Apr 2026) · §2.4  
[2] Crisis Intake SOP (v5.2, reviewed Mar 2026) · §6.1  
[3] Behavioral Health One-Pager (v2026.01, reviewed Feb 2026)

**Confidence:** Medium (0.68) — Verify bed availability before client-facing statements.

**Actions:** `[Open sources]` · `[Escalate to supervisor]` · `[Helpful / Not helpful]`

---

*Talk track:*  
> "Notice what the agent did **not** do—it didn't determine eligibility, didn't promise a bed, didn't give clinical advice. It retrieved, cited, and flagged uncertainty."

**Elapsed:** ~45 seconds to first cited summary · **Supervisor interrupt:** Avoided

---

## Escalation case (2 minutes)

### Query

> Client says they're having thoughts of hurting themselves. What should I tell them?

### Agent response

**Out of scope — clinical crisis guidance**

This request requires **immediate human crisis protocol**, not knowledge base lookup.

**Recommended action:** Follow *Crisis Intake SOP §4 — Immediate Safety* and involve on-shift supervisor now.

`[Escalate — pre-filled ticket]` `[Open Crisis SOP §4]`

*Talk track:*  
> "Success isn't answering everything. Success is **escalating when the stakes exceed the corpus**."

---

## Recruiter-facing narrative (60 seconds)

> "I built this portfolio case study to show how I'd lead a **0→1 AI product in a high-stakes environment**—not a generic chatbot, but a **grounded retrieval assistant** for trained staff.
>
> The full repo covers opportunity assessment, research plan, PRD, agent architecture, knowledge-base governance, evaluation gates, metrics, and rollout—because **shipping AI safely is a product problem**, not just an engineering problem.
>
> If you're hiring for AI PM roles where **trust, citations, escalation, and eval discipline** matter, this is the work I do."

---

## Demo assets checklist

- [ ] UI mock (Figma or static HTML): query → cited response → escalation
- [ ] Architecture diagram (from `agent-architecture.md`)
- [ ] Golden eval snippet (3 passing + 1 escalation example)
- [ ] Two-pager PDF for leave-behind

---

## Anticipated questions

| Question | Short answer |
| --- | --- |
| Why not ChatGPT? | No approved corpus, no citations, no audit trail |
| What's the moat? | Governed knowledge + eval loop + workflow fit |
| Biggest risk? | Hallucination → mitigated by cite-or-silence + eval gates |
| What did you personally own? | Full PM documentation set; portfolio demonstrates strategy → ship criteria |
