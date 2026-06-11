# Article Visual Integration Guide

**Article:** *The Hardest Part of AI Products Isn't the Model. It's Defining What Good Looks Like.*  
**Author:** Mikin Macwan · Mikin Macwan LLC  
**Assets:** `11-visual-artifacts/*.png` · All **sample / portfolio mock data**

---

## Asset inventory

| File | Purpose |
| --- | --- |
| `hero-ace-framework.png` | ACE Framework — Answer / Clarify / Escalate |
| `knowledge-agent-response.png` | Grounded response UI with citations + clarify |
| `golden-dataset-sample.png` | Golden dataset table — expected behavior |
| `evaluation-dashboard.png` | Metrics dashboard (sample data) |
| `evals-are-product-specs.png` | Thought leadership flow diagram |

**Source mockups (editable):** `mockups/*.html` · Re-render: `./mockups/render.sh`

---

## Recommended hero image by channel

| Channel | Recommended hero | Why |
| --- | --- | --- |
| **LinkedIn article cover** | `hero-ace-framework.png` | Instantly communicates thesis (3 behaviors); readable at thumbnail size |
| **Medium article hero** | `hero-ace-framework.png` | Same — concrete, not abstract |
| **LinkedIn feed post (standalone share)** | `evals-are-product-specs.png` | Quotable diagram; works without article context |
| **GitHub README hero** | `hero-ace-framework.png` or `evals-are-product-specs.png` | ACE = product demo; diagram = evals thesis |

**Primary recommendation:** Use **`hero-ace-framework.png`** as the main article cover everywhere. Use **`evals-are-product-specs.png`** as the second social share asset.

---

## Placement in article

### 1. Hero / cover (top of article)

**Image:** `hero-ace-framework.png`

**Caption:**  
*The ACE Framework: Answer, Clarify, Escalate. The same retrieval system must behave differently depending on query type—product defines which outcome is correct.*

**Alt text:**  
Three-column diagram showing Knowledge Agent queries mapped to Answer, Clarify, and Escalate outcomes with confidence levels and sources. Portfolio mock with sample data.

---

### 2. After "Introduce the Knowledge Agent example" section

**Image:** `knowledge-agent-response.png`

**Caption:**  
*A grounded response is not just text—it is citations, confidence, and a clear next step. When geography is missing, the product behavior is clarify, not guess.*

**Alt text:**  
Knowledge Agent UI mockup showing a medium-confidence housing instability answer with two approved sources, citation drawer with quoted evidence, clarify prompt for county or ZIP, and escalate button. Portfolio mock.

---

### 3. After "The golden dataset is where product thinking becomes testable"

**Image:** `golden-dataset-sample.png`

**Caption:**  
*Golden datasets encode product judgment: expected behavior, risk level, and pass/fail criteria—before anyone tunes a prompt.*

**Alt text:**  
Table of five golden dataset scenarios with query, expected behavior (Answer, Clarify, Escalate), risk level, and pass/fail outcome. Anonymized portfolio sample.

---

### 4. After "Connect model metrics to outcomes" section

**Image:** `evaluation-dashboard.png`

**Caption:**  
*Sample evaluation data: TLSR as North Star, with grounding, escalation accuracy, and safety metrics tracked alongside—not after—adoption.*

**Alt text:**  
Evaluation dashboard mockup showing Trusted Lookup Success Rate at 92 percent plus supporting and safety metrics. Labeled sample evaluation data, not production results.

---

### 5. After "Evals start with product judgment" OR as mid-article pull quote graphic

**Image:** `evals-are-product-specs.png`

**Caption:**  
*Evals are product specifications disguised as tests: user problem → desired behavior → product decision → eval criteria → golden dataset → release gate.*

**Alt text:**  
Vertical flow diagram from User Problem through Product Decision and Evaluation Criteria to Golden Dataset, Release Gate, and AI System Behavior. Portfolio thought leadership graphic.

---

## Suggested article flow with visuals

```
[HOOK — text only]

[hero-ace-framework.png]          ← Visual hook / cover

[Why traditional metrics — text]

[Knowledge Agent intro — text]

[knowledge-agent-response.png]    ← What "good" looks like in UI

[Three queries / ACE — text]      ← Reinforces hero (can reference same image)

[Evals start with product judgment — text]

[evals-are-product-specs.png]     ← Key thesis diagram

[Golden dataset section — text]

[golden-dataset-sample.png]       ← Executable product specs

[Metrics section — text]

[evaluation-dashboard.png]        ← How you know it's working

[Takeaway + closing — text]
```

---

## LinkedIn publishing checklist

- [ ] Upload `hero-ace-framework.png` as article cover image  
- [ ] Embed `evals-are-product-specs.png` mid-article (highest share potential)  
- [ ] First comment: link to GitHub repo + live demo  
- [ ] Standalone post option: share `evals-are-product-specs.png` with quote: *"Evals are product specifications disguised as tests."*

---

## Medium publishing checklist

- [ ] Hero: `hero-ace-framework.png`  
- [ ] Alt text on every image (copy from above)  
- [ ] Caption under each image (copy from above)  
- [ ] Footer disclaimer: anonymized portfolio · sample metrics  

---

## GitHub integration (optional)

Add to README after portfolio snapshot:

```markdown
![ACE Framework](11-visual-artifacts/hero-ace-framework.png)
*Answer · Clarify · Escalate — product defines expected behavior (portfolio mock).*
```

---

## Regenerating assets

Edit HTML in `mockups/`, then run:

```bash
cd 11-visual-artifacts/mockups && ./render.sh
```

Requires Google Chrome (headless screenshot).

---

**© 2026 Mikin Macwan LLC · Portfolio mock data only · Not production deployment**
