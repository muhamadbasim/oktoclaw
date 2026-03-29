# EXAMPLES-ADVANCED.md - Realistic examples for the remaining 6 office agents

---

## 1) REPORT — Example

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

## 2) DOCS — Example

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

## 3) SUPPORT — Example

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

## 4) SALES — Example

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

## 5) COMPETITOR — Example

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

## 6) CODE-REVIEW — Example

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
