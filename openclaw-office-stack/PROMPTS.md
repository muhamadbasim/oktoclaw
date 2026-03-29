# PROMPTS.md - Ready-to-use prompts for all 10 office agents

Paket prompt ini sekarang mencakup semua agent kantor:
- `office-main`
- `minutes`
- `inbox`
- `project`
- `report`
- `docs`
- `support`
- `sales`
- `competitor`
- `code-review`

Tinggal copy-paste lalu ganti bagian isi.

---

## 1) `office-main` — Front desk / dispatcher

### Prompt: triage kebutuhan campuran
```text
Aku punya pekerjaan ini, bantu triage dan ubah jadi brief kerja yang rapi:

[isi kebutuhan]

Tolong jawab dengan:
- request type
- goal
- workstreams
- best specialist per workstream
- recommended order
- immediate next steps
```

### Prompt: ubah chat berantakan jadi brief
```text
Rapikan chat/kebutuhan berikut jadi brief kerja yang jelas untuk ditindaklanjuti:

[tempel chat]

Format:
- objective
- context
- constraints
- desired output
- urgency
- missing info
- best specialist
```

### Prompt: tentukan agent yang paling cocok
```text
Dari request berikut, tentukan ini paling cocok ditangani oleh siapa: minutes, inbox, project, report, docs, support, sales, competitor, atau code-review.

[isi request]

Jelaskan singkat alasannya dan kasih draft output awal.
```

---

## 2) `minutes` — Meeting notes / action items

### Prompt: transcript ke notulen
```text
Ubah transcript meeting berikut jadi notulen yang rapi:

[tempel transcript]

Format:
- Purpose
- Key discussion points
- Decisions made
- Action items
- Open questions
```

### Prompt: ekstrak action items
```text
Dari catatan rapat berikut, ekstrak semua action items.

[tempel notes]

Format:
- Task — Owner — Due date — Notes

Kalau owner atau due date tidak ada, tulis:
- Owner not specified
- Due date not specified
```

### Prompt: executive summary meeting
```text
Ringkas meeting berikut jadi executive summary untuk manajer yang sibuk.

[tempel transcript / notes]

Output:
- 5 bullet summary
- decisions made
- top 3 follow-ups
- unresolved risks
```

---

## 3) `inbox` — Email/chat triage

### Prompt: triage inbox
```text
Triage email berikut ke kategori:
- Urgent today
- Important this week
- Waiting / blocked by others
- FYI

[tempel email atau thread]

Untuk tiap item, tulis:
- Sender / thread
- Priority
- Topic
- Required action
- Deadline
- Suggested reply
```

### Prompt: ringkas thread panjang
```text
Ringkas thread email berikut jadi konteks minimum yang perlu aku tahu.

[tempel thread]

Output:
- what happened
- what is being asked
- what is still unanswered
- recommended next action
```

### Prompt: draft balasan profesional
```text
Buat draft balasan profesional untuk email ini.

[tempel email]

Tone:
- singkat
- sopan
- langsung ke inti

Format:
- acknowledgement
- answer/update
- next step
```

### Prompt: daily digest
```text
Dari daftar pesan/email berikut, buat daily digest.

[tempel daftar email]

Format:
- Urgent today
- Needs reply
- Waiting on others
- FYI
```

---

## 4) `project` — Project coordination

### Prompt: status report mingguan
```text
Rapikan update proyek berikut jadi status report mingguan.

[tempel update]

Format:
- Objective
- Progress this week
- Current blockers
- Overdue / at-risk items
- Next week's focus
```

### Prompt: catatan ke task list
```text
Dari catatan berikut, ubah jadi daftar task proyek.

[tempel notes]

Format:
- Task — Owner — Due — Status — Blocker

Kalau ada yang kurang jelas, tandai eksplisit.
```

### Prompt: cari task bermasalah
```text
Analisis daftar task berikut dan sorot:
- no owner
- no due date
- blocked by another team
- overdue item
- conflicting status

[tempel task list]
```

### Prompt: prioritas harian
```text
Buat daily priority view dari status proyek ini.

[tempel update proyek]

Format:
- Top priorities today
- Blockers / risks
- Waiting on
- Recommended next actions
```

---

## 5) `report` — KPI / metrics / business summary

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

## 6) `docs` — SOP / handover / documentation

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

## 7) `support` — Customer issue triage

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

### Prompt: customer reply + internal note
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

## 8) `sales` — Outreach / pipeline / lead brief

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

## 9) `competitor` — Market / competitor intel

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

## 10) `code-review` — PR / diff / risk review

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

## Quick prompts (super praktis)

### office-main
```text
Rapikan kebutuhan ini jadi brief kerja yang jelas dan tentukan agent paling cocok:
[tempel isi]
```

### minutes
```text
Ubah transcript ini jadi notulen + action items + open questions:
[tempel isi]
```

### inbox
```text
Triage thread/email ini dan draft balasan singkat:
[tempel isi]
```

### project
```text
Ubah update ini jadi status proyek yang rapi + next actions:
[tempel isi]
```

### report
```text
Ringkas data KPI ini jadi insight penting + risiko + recommended actions:
[tempel data]
```

### docs
```text
Ubah catatan ini jadi SOP yang rapi dan mudah diikuti:
[tempel notes]
```

### support
```text
Triage issue customer ini dan buat draft balasan awal:
[tempel issue]
```

### sales
```text
Buat lead brief + next step dari informasi ini:
[tempel lead info]
```

### competitor
```text
Ringkas update kompetitor ini dan jelaskan kenapa penting:
[tempel update]
```

### code-review
```text
Review perubahan ini dan sorot risk + missing tests:
[tempel diff / summary]
```
