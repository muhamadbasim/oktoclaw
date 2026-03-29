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

## 6 Agent Lanjutan

### `report`
- KPI / trend / anomaly / performance summary

### `docs`
- SOP / handover / onboarding / documentation

### `support`
- triase tiket / severity / draft customer reply

### `sales`
- lead brief / outreach / pipeline follow-up

### `competitor`
- pricing watch / product update / market intel

### `code-review`
- PR review / risk review / test gap

Untuk detail cepat 6 agent ini, lihat:
- `CHEATSHEET-ADVANCED.md`

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
- bingung mulai dari mana -> `main`

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

### Saat butuh laporan / dokumen / review spesifik
4. pakai agent lanjutan sesuai tipe kerja

### Kalau ada request campuran
5. `main` -> ubah jadi brief dan arahkan ke agent yang tepat

---

## File Lain

- Core 4 prompts: `openclaw-office-stack/PROMPTS.md`
- Core 4 examples: `openclaw-office-stack/EXAMPLES.md`
- Advanced 6 cheatsheet: `openclaw-office-stack/CHEATSHEET-ADVANCED.md`
- Advanced 6 prompts: `openclaw-office-stack/PROMPTS-ADVANCED.md`
- Advanced 6 examples: `openclaw-office-stack/EXAMPLES-ADVANCED.md`
- Panduan stack: `openclaw-office-stack/README.md`
