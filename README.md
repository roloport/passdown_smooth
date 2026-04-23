# passdown_smooth

Qualification-grade passdown skill for semiconductor fab operations. The skill distills controlled SOP/work-instruction documents into role-scoped handover artifacts with strict citation and approval controls.

## What This Repository Contains
- `skills/passdown/SKILL.md`: Skill contract and operating workflow.
- `skills/passdown/templates/`: Output templates for handover artifacts.
- `docs/passdown/`: Lifecycle policy and publication conventions.

## Core Safety Controls
- Controlled SOP sources only.
- Line-level citations for critical actions.
- Mandatory SME + QA approval gate before operational use.
- Auto-revocation on source document version changes.

## Usage
Run the `passdown` skill with complete role and source metadata, then publish only after dual signoff.
