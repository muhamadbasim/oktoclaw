# EXAMPLES.md - Realistic input/output examples for the first 4 office agents

Berikut contoh realistis supaya gampang kebayang hasil yang bagus itu seperti apa.

---

## 1) MAIN — Example

### Input
```text
Bos minta bantuin. Katanya hasil meeting kemarin berantakan, terus ada email client yang belum dibalas, dan proyek website juga ada blocker dari tim design. Aku bingung mulai dari mana.
```

### Output ideal
```text
Request type:
- Mixed office coordination request

Goal:
- Menata 3 pekerjaan berbeda agar bisa ditindaklanjuti cepat

Important context:
- Ada hasil meeting yang belum dirapikan
- Ada email client yang belum dibalas
- Ada blocker proyek website dari tim design

Output needed:
- Minutes meeting yang rapi
- Triage + draft balasan email client
- Status proyek + blocker summary

Best specialist:
- minutes -> untuk hasil meeting
- inbox -> untuk email client
- project -> untuk blocker proyek website

Immediate next step:
1. Tempel catatan/transcript meeting ke agent minutes
2. Tempel thread email client ke agent inbox
3. Tempel update proyek website ke agent project
```

---

## 2) MINUTES — Example

### Input
```text
Meeting product 28 Maret:
- Bahas delay landing page baru
- Tim design bilang revisi hero banner belum final
- Dev bilang page sebenarnya bisa live Jumat kalau asset final masuk Rabu
- Diputuskan launch diundur ke Senin depan
- Basim follow up design untuk final asset
- Rina update timeline ke stakeholder
- Masih belum jelas apakah copy headline final pakai versi A atau B
```

### Output ideal
```text
Purpose:
- Menentukan langkah dan timeline launch landing page baru

Key discussion points:
- Launch tertunda karena asset design hero banner belum final
- Tim dev menyatakan halaman bisa live hari Jumat jika asset final diterima paling lambat hari Rabu
- Ada ketidakjelasan pada versi copy headline final

Decisions made:
- Launch landing page diundur ke Senin depan

Action items:
- Follow up final asset design — Basim — Due date not specified — Pastikan asset masuk sebelum Rabu
- Update timeline ke stakeholder — Rina — Due date not specified — Sinkronkan ekspektasi launch baru

Open questions:
- Apakah copy headline final menggunakan versi A atau versi B?
```

---

## 3) INBOX — Example

### Input
```text
Subject: Re: Proposal update
Hi Basim,
quick follow up on the revised proposal. We need confirmation today if possible because our internal review is tomorrow morning. Also, can you clarify whether onboarding support is included in month 1?
Thanks,
Dina
```

### Output ideal
```text
Sender / thread:
- Dina / Proposal update

Priority:
- Urgent today

Topic:
- Proposal confirmation + onboarding support clarification

Required action:
- Confirm revised proposal status
- Clarify whether onboarding support is included in month 1

Deadline:
- Today

Suggested reply:
Hi Dina,
thanks for the follow-up. Yes, we’ll confirm the revised proposal today. For onboarding support, yes, month 1 includes onboarding assistance. I’ll send the final confirmation shortly.
```

---

## 4) PROJECT — Example

### Input
```text
Project website redesign:
- Homepage draft done
- About page still waiting copy from marketing
- Design asset for hero section still pending from Rika
- Dev task for responsive fix ongoing
- QA not started
- Target launch 5 April
- Owner untuk QA belum ditentukan
```

### Output ideal
```text
Objective:
- Menyelesaikan website redesign untuk target launch 5 April

Progress this week:
- Homepage draft selesai
- Responsive fix sedang dikerjakan oleh tim dev

Current blockers:
- Copy About page masih menunggu marketing
- Asset hero section masih menunggu Rika

Overdue / at-risk items:
- QA belum dimulai
- Owner QA belum ditentukan
- Launch 5 April berisiko jika asset dan copy terlambat masuk

Next week's focus:
- Finalisasi copy About page
- Finalisasi hero asset
- Tetapkan owner QA
- Mulai QA segera setelah responsive fix selesai
```

---

## Quick comparison: bad vs good

### Bad output
```text
Meetingnya membahas banyak hal dan semuanya cukup penting. Ada beberapa action item dan sepertinya perlu follow up lagi.
```

### Good output
```text
Decisions made:
- Launch diundur ke Senin depan

Action items:
- Basim follow up final asset design — Owner: Basim — Due: not specified
- Rina update timeline stakeholder — Owner: Rina — Due: not specified

Open question:
- Final headline memakai versi A atau B?
```

---

## Cara pakai contoh ini

- pakai contoh sebagai patokan hasil
- kalau output agent terlalu ngambang, minta ulang dengan format yang lebih tegas
- tempel format idealnya langsung ke prompt kalau perlu
