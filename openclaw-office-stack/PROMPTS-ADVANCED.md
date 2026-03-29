# PROMPTS-ADVANCED.md - Focused prompt addendum for the advanced 6 office agents

File ini sekarang berfungsi sebagai **lampiran fokus** untuk 6 agent lanjutan.

Catatan:
- **Prompt pack utama** untuk semua 10 agent sekarang ada di `PROMPTS.md`
- File ini dipertahankan sebagai versi ringkas/fokus untuk agent-agent advanced saja
- Kalau bingung mau mulai dari mana, buka `PROMPTS.md` dulu

Agent yang dicakup di file ini:
- `report`
- `docs`
- `support`
- `sales`
- `competitor`
- `code-review`

---

## Cara pakai file ini

Pakai file ini kalau kamu:
- sudah paham struktur stack kantor
- cuma butuh prompt untuk 6 agent advanced
- ingin referensi yang lebih ringkas tanpa campur 4 agent awal

Kalau butuh prompt lengkap semua agent, pakai:
- `PROMPTS.md`

---

## 1) `report` — KPI / metrics / business summary

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

### Prompt: executive report 5 bullets
```text
Ubah data berikut jadi executive report 5 bullet yang bisa dibaca cepat oleh manajer.

[tempel data]
```

---

## 2) `docs` — SOP / handover / documentation

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

### Prompt: rapikan dokumentasi internal
```text
Rapikan dokumentasi berikut supaya lebih jelas, lebih singkat, dan mudah dipakai tim baru.

[tempel draft doc]
```

---

## 3) `support` — customer issue triage

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

### Prompt: first response singkat
```text
Buat first response yang singkat, tenang, dan profesional untuk issue berikut.

[tempel issue]
```

---

## 4) `sales` — outreach / pipeline / lead brief

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

### Prompt: pipeline summary
```text
Ringkas update pipeline berikut.

[tempel pipeline notes]

Format:
- Active deals
- At-risk deals
- Stalled deals
- Recommended follow-ups
```

---

## 5) `competitor` — market / competitor intel

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

### Prompt: battlecard note
```text
Ubah update kompetitor berikut jadi battlecard singkat untuk tim sales/marketing.

[tempel update]
```

---

## 6) `code-review` — PR / diff / risk review

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

### Prompt: ubah jadi PR comments
```text
Dari perubahan berikut, tulis review comments yang actionable dan siap ditempel ke PR.

[tempel diff / summary]
```

---

## Quick index

- KPI / trend / anomaly -> `report`
- SOP / handover / docs -> `docs`
- tiket customer / first response -> `support`
- lead / outreach / pipeline -> `sales`
- pricing / market / competitor -> `competitor`
- PR / risk / missing tests -> `code-review`

Untuk versi lengkap semua agent:
- `PROMPTS.md`
