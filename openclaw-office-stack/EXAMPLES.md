# EXAMPLES.md - Realistic input/output examples for all 10 office agents

Berikut contoh realistis supaya gampang kebayang hasil yang bagus itu seperti apa.

---

## 1) `office-main` — Example

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

## 2) `minutes` — Example

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

## 3) `inbox` — Example

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

## 4) `project` — Example

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

## 5) `report` — Example

### Input
```text
Weekly metrics:
- Revenue: 120M vs 135M last week
- New leads: 240 vs 180 last week
- Conversion rate: 3.1% vs 4.2% last week
- Churn: 2.8% vs 1.9% last week
```

### Output ideal
```text
Headline insights:
- Lead volume increased, but conversion and churn worsened, creating pressure on revenue.

Metrics snapshot:
- Revenue: 120M (-11.1% WoW)
- New leads: 240 (+33.3% WoW)
- Conversion rate: 3.1% (-1.1pp WoW)
- Churn: 2.8% (+0.9pp WoW)

Risks / anomalies:
- Higher lead volume is not translating into closed revenue
- Churn increase may be amplifying revenue decline

Recommended actions:
- Review lead quality and sales follow-up
- Investigate churn reasons from the last 2 weeks
- Check whether onboarding or product issues affected conversion
```

---

## 6) `docs` — Example

### Input
```text
Cara publish artikel:
- buka CMS
- pilih draft
- cek gambar
- pastikan SEO title ada
- publish
- share ke tim
```

### Output ideal
```text
Purpose:
- Publish an article from draft to live status in the CMS

Scope:
- Applies to content editors publishing standard blog articles

Prerequisites:
- Draft article is approved
- Featured image is available
- SEO metadata is prepared

Steps:
1. Open the CMS and locate the approved draft.
2. Review article content for final accuracy.
3. Check that the featured image is uploaded and displayed correctly.
4. Confirm SEO title and meta description are filled.
5. Publish the article.
6. Copy the live URL and share it with the team.

Validation:
- Article is accessible on the live site
- Image displays correctly
- SEO title appears in the page source

Troubleshooting:
- If image is missing, re-upload and refresh preview.
- If publish fails, save draft and retry or escalate to the CMS admin.
```

---

## 7) `support` — Example

### Input
```text
Customer says they cannot log in after password reset. They tried twice. This is blocking their work today.
```

### Output ideal
```text
Severity:
- High

Category:
- Authentication / login issue

Impact:
- Customer is blocked from using the product today

Repro / evidence:
- Issue occurs after password reset attempt
- Customer reports repeated failure

Missing info:
- Browser / device
- Exact error message
- Whether reset link was the latest email

Routing:
- Authentication / platform team

Suggested customer reply:
Thanks for flagging this. Sorry you're blocked. We’re checking the login issue now. Could you share the exact error message and confirm whether you used the latest password reset email? That will help us speed this up.
```

---

## 8) `sales` — Example

### Input
```text
Prospect: PT Maju Jaya
Contact: Rudi, Head of Operations
Context: Interested after demo, asked whether onboarding can be done in 2 weeks, currently using spreadsheets.
```

### Output ideal
```text
Company:
- PT Maju Jaya

Contact:
- Rudi, Head of Operations

Context / need:
- Prospect is evaluating a move away from spreadsheets after seeing the demo
- Wants confidence that onboarding can be completed within 2 weeks

Opportunity level:
- Warm

Risks / missing info:
- Team size not confirmed
- Data migration scope not confirmed
- Success criteria for onboarding not defined

Recommended next step:
- Send a follow-up confirming onboarding approach and ask 2-3 scoping questions about users, migration, and go-live expectations
```

---

## 9) `competitor` — Example

### Input
```text
Competitor X launched a new starter plan at 30% lower price and updated homepage messaging to emphasize easy onboarding for small teams.
```

### Output ideal
```text
What changed:
- Competitor X introduced a lower-priced starter plan
- Homepage messaging now emphasizes easy onboarding for small teams

Evidence / source:
- Pricing page update
- Homepage messaging update

Why it matters:
- This may increase pressure in SMB deals where onboarding simplicity and entry price matter most

Confidence:
- High for pricing and messaging changes
- Medium for downstream sales impact

Recommended response:
- Review SMB positioning and pricing objections in active deals
- Prepare comparison messaging around onboarding quality and value
```

---

## 10) `code-review` — Example

### Input
```text
PR summary:
- Added retry logic to payment callback handler
- Stores callback payload in DB
- Skips duplicate callbacks if transaction_id already exists
```

### Output ideal
```text
Critical issues:
- None identified from summary alone

Major issues:
- Need confirmation that duplicate detection is idempotent under concurrent requests
- Need confirmation that payload storage does not include sensitive data that should be masked

Minor issues:
- Retry limit and backoff policy are not described

Missing tests:
- Duplicate callback handling under concurrency
- Retry behavior for transient failures
- Payload persistence failure path

Overall recommendation:
- Looks directionally good, but should not merge without concurrency and retry-path test coverage
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
