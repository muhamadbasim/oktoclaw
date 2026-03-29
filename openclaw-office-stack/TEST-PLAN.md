# TEST-PLAN.md - Real-world test plan for 10 office agents

Tujuan file ini: bantu uji kualitas 10 agent dengan skenario kantor yang realistis.

## Cara Pakai
Untuk tiap agent:
1. copy skenario input
2. kirim ke agent yang sesuai
3. bandingkan hasilnya dengan checklist expected output
4. catat apa yang masih terlalu generic / salah / kurang berguna

---

## 1) `main` — mixed office triage

### Test input
```text
Aku ada 3 hal: hasil meeting kemarin masih acak, ada email client yang minta jawaban hari ini, dan proyek landing page ketahan karena asset design belum final. Bantu aku susun ini biar jelas harus mulai dari mana.
```

### Expected output
- mengidentifikasi request sebagai mixed request
- memecah menjadi 3 stream kerja
- mengarahkan ke `minutes`, `inbox`, `project`
- memberi next step yang konkret

### Pass criteria
- tidak menjawab terlalu umum
- tidak mencampur notulen, email, dan project jadi satu output kabur

---

## 2) `minutes` — meeting notes

### Test input
```text
Meeting marketing:
- Campaign Ramadan performanya bagus di CTR tapi leads turun
- Tim ads minta landing page baru selesai minggu ini
- Diputuskan budget ditambah 15% untuk 5 hari ke depan
- Aulia follow up copy hero
- Dimas update budget sheet
- Belum ada keputusan headline final
```

### Expected output
- purpose
- key discussion points
- decisions made
- action items
- open questions

### Pass criteria
- budget +15% muncul sebagai decision
- Aulia dan Dimas muncul sebagai action items
- headline final muncul sebagai unresolved question

---

## 3) `inbox` — email triage

### Test input
```text
Subject: Re: Contract revision
Hi Basim,
we need your confirmation today so legal can finalize tomorrow morning. Also please confirm whether clause 7 has been updated in the latest version.
Thanks,
Rara
```

### Expected output
- priority: urgent today
- identifies 2 asks
- deadline: today / tomorrow morning context
- draft reply singkat dan profesional

### Pass criteria
- tidak melewatkan pertanyaan tentang clause 7
- draft reply terasa siap kirim

---

## 4) `project` — project coordination

### Test input
```text
Website relaunch:
- Homepage done
- Pricing page copy waiting legal
- Final hero asset waiting design
- QA belum mulai
- Launch target 10 April
- Owner QA belum ada
```

### Expected output
- objective
- blockers
- at-risk items
- ownerless item flagged
- recommended next actions

### Pass criteria
- owner QA yang belum ada harus disorot jelas
- launch target harus disebut berisiko

---

## 5) `report` — KPI summary

### Test input
```text
This week:
- Revenue 95M vs 110M last week
- Leads 320 vs 250 last week
- Conversion 2.4% vs 3.8% last week
- Refund rate 4.1% vs 2.2% last week
```

### Expected output
- headline insights
- changes vs previous period
- anomaly/risk
- recommended actions

### Pass criteria
- menyadari leads naik tapi conversion dan refund memburuk
- tidak mengarang penyebab pasti

---

## 6) `docs` — SOP / documentation

### Test input
```text
Cara approve invoice:
- finance cek nominal
- cek PO cocok atau tidak
- kalau cocok kirim ke manager
- setelah approve upload ke folder shared
- kasih tahu procurement
```

### Expected output
- SOP rapi
- ada purpose / prerequisites / steps / validation
- bisa diikuti orang lain tanpa penulis aslinya

### Pass criteria
- hasil lebih terstruktur dari input mentah
- ada langkah validasi

---

## 7) `support` — customer issue

### Test input
```text
Customer bilang dashboard tidak bisa dibuka sejak pagi dan tim mereka tidak bisa lihat laporan harian. Mereka bilang ini urgent karena dipakai untuk meeting jam 2 siang.
```

### Expected output
- severity
- impact
- missing info
- routing
- customer reply draft

### Pass criteria
- severity minimal high
- reply menenangkan tapi tidak janji berlebihan

---

## 8) `sales` — lead brief and follow-up

### Test input
```text
Prospect: PT Sinar Baru
Contact: Maya, Ops Manager
Context: ikut demo minggu lalu, tertarik karena ingin pindah dari spreadsheet, tanya apakah onboarding bisa selesai sebelum akhir bulan.
```

### Expected output
- lead brief
- opportunity level
- risks / missing info
- recommended next step

### Pass criteria
- output terasa sales-ready
- tidak mengarang pain point di luar info yang ada

---

## 9) `competitor` — market intel

### Test input
```text
Competitor Z baru turunkan harga paket starter 20% dan homepage mereka sekarang fokus ke pesan "setup in 1 day" untuk UMKM.
```

### Expected output
- what changed
- why it matters
- confidence
- recommended response

### Pass criteria
- menyorot implikasi ke SMB / UMKM segment
- tidak terlalu banyak spekulasi

---

## 10) `code-review` — PR summary review

### Test input
```text
PR summary:
- Added retry for webhook processing
- Ignore duplicate events by event_id
- Store raw payload for audit
```

### Expected output
- major risks
- missing tests
- possible edge cases
- recommendation

### Pass criteria
- menyorot idempotency/concurrency risk
- menyorot payload sensitivity / audit concerns
- menyebut test gap

---

## Scoring Template

Pakai skor sederhana:
- 2 = bagus / siap pakai
- 1 = lumayan tapi perlu koreksi
- 0 = tidak memadai

Format catatan:

```text
Agent:
Score:
What worked:
What was weak:
What to refine:
```

---

## Prioritas Pengujian

Kalau tidak mau test semua sekaligus, mulai dari:
1. `main`
2. `minutes`
3. `inbox`
4. `project`
5. `report`

Baru lanjut sisanya.
