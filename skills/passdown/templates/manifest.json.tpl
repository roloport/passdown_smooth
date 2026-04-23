{
  "role": "{{role}}",
  "tool_area": "{{tool_area}}",
  "owner": "{{handover_owner}}",
  "status": "draft",
  "risk_tier": "high",
  "source_refs": [
    {
      "doc_id": "{{doc_id_1}}",
      "version": "{{version_1}}",
      "line_ref": "{{line_ref_1}}"
    },
    {
      "doc_id": "{{doc_id_2}}",
      "version": "{{version_2}}",
      "line_ref": "{{line_ref_2}}"
    }
  ],
  "approvals": {
    "sme": "pending",
    "qa": "pending"
  },
  "stale_policy": "auto_revoke_on_source_version_change",
  "generated_at": "{{generated_at_iso8601}}",
  "generator": "passdown-skill-v1"
}
