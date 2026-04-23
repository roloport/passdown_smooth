# Passdown Documentation

This directory stores generated handover packs and policy references for semiconductor fab role transitions.

## Lifecycle
1. Generate draft pack from controlled SOP documents.
2. Validate line-level citations on all critical steps.
3. Route for SME and QA approvals.
4. Publish approved artifacts.
5. Auto-revoke if any source SOP version changes.

## Status States
- `draft`
- `approved`
- `stale_blocked`

## Minimum Artifact Set
- `runbook.md`
- `alarm-escalation.md`
- `qualification-checklist.md`
- `scenario-drills.md`
- `manifest.json`
