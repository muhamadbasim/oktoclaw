# PROMPTS-ADVANCED.md - Ready-to-use prompts for the remaining 6 office agents

Paket prompt ini untuk:
- `report`
- `docs`
- `support`
- `sales`
- `competitor`
- `code-review`

---

## 1) REPORT — KPI / metrics / business summary

### Prompt: ringkas KPI
```text
Ringkas data KPI berikut jadi laporan yang mudah dibaca manajer.

[tempel data]

Format:
- Headline insights
- Metrics snapshot
- Changes vs previous period / target
- Risks / anomalies
- Recommended actions
```

### Prompt: jelaskan anomaly
```text
Analisis data berikut dan sorot anomaly atau pergerakan yang perlu perhatian.

[tempel data]

Pisahkan:
- observation
- likely interpretation
- what needs checking next
```

---

## 2) DOCS — SOP / handover / documentation

### Prompt: buat SOP
```text
Ubah catatan berikut jadi SOP yang rapi dan bisa diikuti orang lain.

[tempel notes]

Format:
- Purpose
- Scope
- Prerequisites
- Steps
- Validation
- Troubleshooting
```

### Prompt: handover doc
```text
Ubah informasi berikut jadi handover document untuk rekan tim.

[tempel info]

Format:
- Context
- Current status
- Important files / systems
- Risks / watchouts
- Next recommended actions
```

---

## 3) SUPPORT — customer issue triage

### Prompt: triase tiket
```text
Triage tiket/customer issue berikut.

[tempel ticket]

Format:
- Severity
- Category
- Impact
- Repro / evidence
- Missing info
- Routing
- Suggested customer reply
```

### Prompt: pisahkan customer reply vs internal note
```text
Dari issue berikut, buat dua output:
1. Customer-facing reply
2. Internal escalation note

[tempel issue]
```

---

## 4) SALES — outreach / pipeline / lead brief

### Prompt: lead brief
```text
Buat lead brief dari informasi berikut.

[tempel info lead]

Format:
- Company
- Contact
- Context / need
- Opportunity level
- Risks / missing info
- Recommended next step
```

### Prompt: outreach draft
```text
Buat draft outreach yang singkat, relevan, dan tidak generic.

[tempel info prospect]

Format:
- Subject
- Opening
- Relevance
- CTA
```

---

## 5) COMPETITOR — market / competitor intel

### Prompt: competitor update
```text
Ringkas update kompetitor berikut jadi intel yang berguna untuk tim.

[tempel link / notes / update]

Format:
- What changed
- Evidence / source
- Why it matters
- Confidence
- Recommended response
```

### Prompt: weekly competitor digest
```text
Dari update berikut, buat weekly competitor digest.

[tempel notes]

Format:
- Key moves
- Pricing / product / messaging changes
- Emerging risks
- Suggested internal follow-up
```

---

## 6) CODE-REVIEW — PR / diff / risk review

### Prompt: review diff
```text
Review diff / PR berikut.

[tempel diff / summary]

Format:
- Critical issues
- Major issues
- Minor issues
- Missing tests
- Overall recommendation
```

### Prompt: fokus test gap
```text
Analisis perubahan berikut dan fokus cari:
- missing tests
- risky assumptions
- edge cases
- possible regressions

[tempel diff / summary]
```
