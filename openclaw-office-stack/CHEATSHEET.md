# CHEATSHEET.md - Office agents quick reference

Pakai file ini kalau mau cepat tanpa buka dokumentasi panjang. File ini sekarang mencakup **semua 10 agent kantor**.

---

## 1) `office-main`
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

## 2) `minutes`
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

## 3) `inbox`
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

## 4) `project`
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

## 5) `report`
Dipakai untuk:
- KPI mingguan/bulanan
- dashboard summary
- anomaly / trend analysis

Prompt cepat:
```text
Ringkas data KPI berikut jadi laporan yang mudah dibaca manajer:
[tempel data]
```

---

## 6) `docs`
Dipakai untuk:
- SOP
- handover
- onboarding docs
- internal documentation

Prompt cepat:
```text
Ubah catatan berikut jadi SOP yang rapi dan bisa diikuti orang lain:
[tempel notes]
```

---

## 7) `support`
Dipakai untuk:
- triase tiket
- severity
- missing info
- draft jawaban awal customer

Prompt cepat:
```text
Triage tiket/customer issue berikut:
[tempel issue]
```

---

## 8) `sales`
Dipakai untuk:
- lead brief
- outreach draft
- follow-up
- pipeline recap

Prompt cepat:
```text
Buat lead brief dari informasi berikut:
[tempel info]
```

---

## 9) `competitor`
Dipakai untuk:
- update kompetitor
- pricing watch
- product change watch
- market intel

Prompt cepat:
```text
Ringkas update kompetitor berikut jadi intel yang berguna untuk tim:
[tempel update]
```

---

## 10) `code-review`
Dipakai untuk:
- review PR/diff
- test gap
- technical risk
- maintainability review

Prompt cepat:
```text
Review diff / PR berikut:
[tempel diff / summary]
```

---

## Pilih Agent Berdasarkan Jenis Kerja

- meeting / transcript -> `minutes`
- email / thread / reply -> `inbox`
- task / owner / due date / blocker -> `project`
- angka / KPI / tren -> `report`
- SOP / dokumentasi -> `docs`
- tiket customer -> `support`
- lead / outreach -> `sales`
- market / pricing competitor -> `competitor`
- PR / code risk -> `code-review`
- bingung mulai dari mana -> `office-main`

---

## Aturan Praktis

- kalau input berantakan -> mulai dari `office-main`
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

### Saat butuh laporan / dokumen / review spesifik
4. pakai agent spesialis yang sesuai

### Kalau ada request campuran
5. `office-main` -> ubah jadi brief dan arahkan ke agent yang tepat

---

## File Lain

- Prompt utama 10 agent: `openclaw-office-stack/PROMPTS.md`
- Contoh semua agent: `openclaw-office-stack/EXAMPLES.md`
- Panduan stack: `openclaw-office-stack/README.md`
- Keyword chat: `openclaw-office-stack/KEYWORDS.md`
