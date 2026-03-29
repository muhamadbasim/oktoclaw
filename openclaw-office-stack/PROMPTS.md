# PROMPTS.md - Ready-to-use prompts for the first 4 office agents

Paket prompt ini dibuat untuk 4 agent awal:
- `main`
- `minutes`
- `inbox`
- `project`

Tinggal copy-paste lalu ganti bagian isi.

---

## 1) MAIN — Front desk / dispatcher

### Prompt: triage kebutuhan
```text
Aku punya pekerjaan ini, bantu triage dan ubah jadi brief kerja yang rapi:

[isi kebutuhan]

Tolong jawab dengan:
- jenis request
- tujuan
- konteks penting
- output yang dibutuhkan
- agent yang paling cocok
- next step
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
```

### Prompt: tentukan agent yang paling cocok
```text
Dari request berikut, tentukan ini paling cocok ditangani oleh siapa: minutes, inbox, project, report, docs, support, sales, competitor, atau code-review.

[isi request]

Jelaskan singkat alasannya dan kasih draft output awal.
```

---

## 2) MINUTES — Meeting notes / action items

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

## 3) INBOX — Email/chat triage

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

## 4) PROJECT — Project coordination

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

## Quick prompts (super praktis)

### Meeting
```text
Ubah transcript ini jadi notulen + action items + open questions:
[tempel isi]
```

### Inbox
```text
Triage thread/email ini dan draft balasan singkat:
[tempel isi]
```

### Project
```text
Ubah update ini jadi status proyek yang rapi + next actions:
[tempel isi]
```

### Main
```text
Rapikan kebutuhan ini jadi brief kerja yang jelas dan tentukan agent paling cocok:
[tempel isi]
```
