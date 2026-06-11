# Sample Knowledge Corpus

**Version:** v0.9 · **Purpose:** Portfolio retrieval corpus for Knowledge Agent demos and evals

> All documents are **fictional and anonymized**. No real employer, nonprofit, client, or internal workflow is referenced.

## Corpus summary

| Folder | Count | Description |
| --- | --- | --- |
| [`resource-directory/`](resource-directory/) | 10 | Program guides, referral directories, eligibility overviews |
| [`policy-sop/`](policy-sop/) | 10 | Escalation, OOS, citation, and operational SOPs |
| [`training-guidance/`](training-guidance/) | 10 | Staff training, FAQs, safe use, workflows |

**Total:** 30 documents · All `approved_for_agent_use: true` except where noted in metadata

## Metadata schema

Each document includes front matter:

- `document_id` — unique ID (RD-*, PS-*, TG-*)
- `title`, `source_type`, `geography`, `last_reviewed`, `owner`
- `approved_for_agent_use` — indexed for retrieval when true
- `escalation_required` — domain flag for high-stakes content

## Intentional corpus features (for eval demos)

| Feature | Document | Eval scenario |
| --- | --- | --- |
| Income threshold conflict | RD-001 §2.4 vs RD-009 §5.1 | G-049 |
| Region D gap | No Region D housing doc | G-050 |
| Stale benefits doc | RD-009 (2025-08) | Freshness warnings |
| OOS clinical block | PS-005 | G-013 |
| DV escalation | RD-005 | G-021 |

## Related artifacts

- Golden dataset: [`../06-evaluations/golden-dataset.csv`](../06-evaluations/golden-dataset.csv)
- Eval run sample: [`../06-evaluations/evaluation-run-sample.md`](../06-evaluations/evaluation-run-sample.md)
- KB design: [`../05-agent-design/knowledge-base-design.md`](../05-agent-design/knowledge-base-design.md)
