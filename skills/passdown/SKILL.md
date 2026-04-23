---
name: passdown
description: Build qualification-grade handover packs for semiconductor fab operations from controlled SOP/work-instruction documents. Use when Codex needs to distill role-specific operational knowledge with extremely low error tolerance, line-level traceability, mandatory SME+QA approval gates, and auto-revocation on source document version changes.
---

# Passdown

Collect controlled SOP sources and generate role-scoped, audit-ready handover artifacts for fab onboarding.

## Input Contract

Require these inputs before generation:
- `role`
- `tool_area`
- `sop_doc_set` (controlled docs only)
- `doc_versions`
- `shift_context`
- `escalation_matrix`
- `handover_owner`

Reject execution if any required input is missing.

## Workflow

1. Validate inputs and classify the role scope.
2. Normalize source documents into a citation table keyed by exact line/section and version.
3. Distill only what is explicitly documented for the target role and tool area.
4. Generate artifacts from templates in `templates/`.
5. Run quality gates:
- Block any critical step without a line-level citation.
- Block any cross-role leakage.
- Block if source versions are missing or inconsistent.
6. Mark status as `draft` and route for dual signoff.

## Governance Rules

Apply these rules in every run:
- Use controlled SOP/work-instruction docs only.
- Never infer missing critical procedural detail.
- Label unknowns as blocking gaps.
- Require both `SME` and `QA` approvals before setting status to `approved`.
- If any source SOP version changes, set existing pack status to `stale_blocked` until reapproved.

## Outputs

Produce all files for each handover pack:
- `runbook.md`
- `alarm-escalation.md`
- `qualification-checklist.md`
- `scenario-drills.md`
- `manifest.json`

## Output Requirements

Enforce these requirements:
- Every critical action must include a line-level source citation with source version.
- Include stop conditions, escalation triggers, and error-intolerant checkpoints.
- Record approvals and lifecycle status in `manifest.json`.
