# CHEATSHEET.md - Office agents quick reference

Pakai file ini kalau mau cepat tanpa buka dokumentasi panjang.

---

## 4 Agent Awal

### `main`
Dipakai untuk:
- triage kebutuhan campuran
- ubah chat berantakan jadi brief kerja
- menentukan agent yang paling cocok

Prompt cepat:
```text
Rapikan kebutuhan ini jadi brief kerja yang jelas dan tentukan agent paling cocok:
[tempel isi]
```

---

### `minutes`
Dipakai untuk:
- notulen meeting
- action items
- keputusan
- open questions

Prompt cepat:
```text
Ubah transcript ini jadi notulen + action items + open questions:
[tempel isi]
```

---

### `inbox`
Dipakai untuk:
- triase email
- ringkas thread panjang
- draft balasan singkat
- daily digest

Prompt cepat:
```text
Triage thread/email ini dan draft balasan singkat:
[tempel isi]
```

---

### `project`
Dipakai untuk:
- task list
- weekly status
- blocker summary
- overdue / at-risk items

Prompt cepat:
```text
Ubah update ini jadi status proyek yang rapi + next actions:
[tempel isi]
```

---

## Pilih Agent Berdasarkan Jenis Kerja

- meeting / transcript -> `minutes`
- email / thread / reply -> `inbox`
- task / owner / due date / blocker -> `project`
- bingung mulai dari mana -> `main`

---

## Format Hasil yang Bagus

### Meeting notes
- Purpose
- Key discussion points
- Decisions made
- Action items
- Open questions

### Inbox triage
- Sender / thread
- Priority
- Topic
- Required action
- Deadline
- Suggested reply

### Project update
- Objective
- Progress this week
- Current blockers
- Overdue / at-risk items
- Next week's focus

---

## Aturan Praktis

- kalau input berantakan -> mulai dari `main`
- kalau butuh hasil siap kirim ke tim -> minta format eksplisit
- kalau owner/due date tidak ada -> jangan ngarang
- kalau thread panjang -> minta ringkas dulu, baru draft reply
- kalau proyek mulai kacau -> minta daftar `owner / due / status / blocker`

---

## Workflow Harian yang Disarankan

### Pagi
1. `inbox` -> triage pesan masuk
2. `project` -> tentukan prioritas hari ini

### Setelah meeting
3. `minutes` -> rapikan notulen + action items

### Kalau ada request campuran
4. `main` -> ubah jadi brief dan arahkan ke agent yang tepat

---

## File Lain

- Prompt lengkap: `openclaw-office-stack/PROMPTS.md`
- Contoh hasil ideal: `openclaw-office-stack/EXAMPLES.md`
- Panduan stack: `openclaw-office-stack/README.md`
