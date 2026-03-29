# BEFORE-VS-AFTER.md - Prompt tuning examples for all 10 office agents

File ini menunjukkan contoh sederhana **sebelum vs sesudah prompt tuning** untuk semua 10 agent kantor.

Tujuannya:
- menunjukkan kenapa persona/prompt tuning itu penting
- memperlihatkan perubahan kualitas output
- jadi referensi saat bikin agent baru

---

## 1) `office-main` — dispatcher

### Before
```text
Kamu punya beberapa hal yang perlu dikerjakan. Sebaiknya mulai dari yang paling urgent dulu lalu selesaikan yang lain satu per satu.
```

### After
```text
Request type
- Mixed office request

Workstreams
1. Meeting notes
2. Client email
3. Project blocker

Best specialist per workstream
- `minutes`
- `inbox`
- `project`

Recommended order
1. Client email
2. Project blocker
3. Meeting notes
```

### Difference
- before: hanya prioritas umum
- after: benar-benar berfungsi sebagai dispatcher

---

## 2) `minutes` — meeting notes

### Before
```text
Meeting membahas performa campaign dan tindak lanjut tim. Ada beberapa hal penting yang perlu diperhatikan ke depan.
```

### After
```text
Purpose
- Review campaign performance and next steps

Decisions made
- Budget campaign ditambah 15%

Action items
- Aulia — follow up copy hero
- Dimas — update budget sheet

Open questions
- Headline final belum diputuskan
```

### Difference
- before: hanya rangkuman umum
- after: notulen yang bisa dipakai

---

## 3) `inbox` — email triage

### Before
```text
Email ini penting dan perlu dibalas segera. Pastikan Anda memberikan klarifikasi yang dibutuhkan.
```

### After
```text
Priority
- Urgent today

Required action
- Confirm today
- Check whether clause 7 is updated

Suggested reply
Hi Rara,
Thanks — I’ll confirm today. I’m checking the latest version now and will confirm shortly whether clause 7 has been updated.
```

### Difference
- before: nasihat umum
- after: triage + draft reply siap kirim

---

## 4) `project` — project coordination

### Before
```text
Proyek berjalan tetapi ada beberapa hambatan yang perlu diselesaikan agar target tetap tercapai.
```

### After
```text
Current blockers
- Pricing page waiting legal
- Hero asset waiting design
- QA not started

At-risk items
- Launch target 10 April
- QA has no owner

Recommended next actions
- Assign QA owner today
- Confirm ETA from legal
- Confirm ETA from design
```

### Difference
- before: abstrak
- after: langsung bisa dipakai follow-up

---

## 5) `report` — KPI summary

### Before
```text
Performa minggu ini menunjukkan beberapa peningkatan dan penurunan. Secara keseluruhan perlu perhatian lebih lanjut.
```

### After
```text
Headline insights
- Leads naik, tapi revenue turun
- Conversion turun signifikan
- Refund rate meningkat tajam

Recommended actions
- Audit kualitas leads
- Investigasi penyebab refund
- Breakdown conversion per channel
```

### Difference
- before: vague
- after: insight + tindakan lanjut

---

## 6) `docs` — documentation

### Before
```text
Berikut langkah-langkah approve invoice: cek nominal, cek PO, kirim ke manager, upload, lalu beri tahu procurement.
```

### After
```text
Purpose
- Menjelaskan proses approval invoice

Prerequisites
- Invoice tersedia
- PO tersedia
- Akses folder shared tersedia

Steps
1. Finance cek nominal
2. Cek kesesuaian dengan PO
3. Kirim ke manager
4. Upload ke folder shared
5. Informasikan ke procurement

Validation
- Approval selesai
- File ter-upload
- Procurement notified
```

### Difference
- before: catatan mentah
- after: SOP yang bisa dijalankan

---

## 7) `support` — support triage

### Before
```text
Masalah ini cukup serius dan harus dicek segera. Minta informasi tambahan dari customer.
```

### After
```text
Severity
- High

Impact
- Customer blocked before 2 PM meeting

Missing info
- Error message
- Screenshot
- Affected users
- Browser/device

Customer reply
- Thanks for flagging this. We understand this is urgent and are checking it now...
```

### Difference
- before: terlalu umum
- after: siap dipakai support ops

---

## 8) `sales` — sales assistant

### Before
```text
Prospect ini terlihat tertarik. Sebaiknya lakukan follow-up untuk mengetahui kebutuhan mereka lebih lanjut.
```

### After
```text
Lead brief
- Company: PT Sinar Baru
- Contact: Maya, Ops Manager
- Opportunity level: Warm

Risks / missing info
- Scope onboarding belum jelas
- Target go-live exact date belum jelas

Recommended next step
- Follow-up cepat
- Jadwalkan call 15–20 menit untuk scoping
```

### Difference
- before: saran umum
- after: benar-benar sales-ready

---

## 9) `competitor` — competitor watch

### Before
```text
Kompetitor tampaknya sedang melakukan perubahan strategi harga dan positioning yang mungkin perlu diperhatikan.
```

### After
```text
What changed
- Starter plan turun 20%
- Messaging fokus ke “setup in 1 day”
- Target: UMKM

Why it matters
- Bisa menekan positioning di segmen SMB/UMKM

Recommended response
- Review SMB positioning
- Siapkan counter-message onboarding cepat dan value
```

### Difference
- before: kabur
- after: intel yang usable

---

## 10) `code-review` — code review

### Before
```text
Perubahan ini terlihat bagus. Pastikan retry, deduplication, dan audit logging sudah diimplementasikan dengan aman.
```

### After
```text
Major issues
- Retry may cause duplicate side effects
- event_id dedup depends on source guarantees
- Raw payload storage may create privacy risk

Missing tests
- Concurrent duplicate delivery
- Retry transient vs permanent failures
- Sensitive payload redaction
```

### Difference
- before: terlalu aman dan generik
- after: review engineering yang berguna

---

## General pattern

### Before tuning
Agent cenderung:
- sopan
- umum
- terdengar pintar
- tapi belum tentu usable

### After tuning
Agent menjadi:
- spesifik
- terstruktur
- lebih sulit ngarang
- langsung bisa dipakai kerja

## Key takeaway

Prompt tuning yang bagus mengubah agent dari:

**"mengerti topik"**

menjadi:

**"mengerti cara kerja tim"**
