# KEYWORDS.md - Chat keywords to call the 10 office agents

Pakai file ini kalau kamu mau manggil agent langsung dari chat/WhatsApp/Telegram dengan cara yang natural.

## Format yang disarankan

Paling rapi:
```text
<agent>: <task>
```

Contoh:
```text
minutes: ubah ini jadi notulen
inbox: triage email ini
project: rapikan status proyek ini
```

Alternatif lain yang tetap enak dipakai:
```text
pakai <agent>: <task>
```

---

## 1) `office-main`
**Fungsi:** dispatcher / triage kerjaan campuran

**Keywords:**
- `office-main:`
- `pakai office-main:`
- `bantu triage ini`
- `susun kerjaan ini`
- `aku bingung mulai dari mana`
- `rapikan kebutuhan ini`

**Contoh:**
```text
office-main: aku ada meeting notes, email client, dan blocker project
```

---

## 2) `minutes`
**Fungsi:** notulen meeting, keputusan, action items

**Keywords:**
- `minutes:`
- `pakai minutes:`
- `buat notulen`
- `rapikan hasil meeting`
- `ekstrak action items`
- `ubah transcript ini jadi notulen`

**Contoh:**
```text
minutes: ekstrak action items dari catatan ini
```

---

## 3) `inbox`
**Fungsi:** triase email/thread, draft balasan

**Keywords:**
- `inbox:`
- `pakai inbox:`
- `triage email ini`
- `ringkas thread ini`
- `draft balasan untuk email ini`
- `buat balasan singkat`

**Contoh:**
```text
inbox: triage email ini dan draft balasan singkat
```

---

## 4) `project`
**Fungsi:** status proyek, blocker, owner, due date

**Keywords:**
- `project:`
- `pakai project:`
- `rapikan status proyek ini`
- `cari blocker proyek ini`
- `susun task list`
- `buat prioritas proyek`

**Contoh:**
```text
project: cari blocker dan owner yang belum ada
```

---

## 5) `report`
**Fungsi:** KPI, angka, trend, insight

**Keywords:**
- `report:`
- `pakai report:`
- `ringkas KPI ini`
- `jelaskan angka ini`
- `cari insight dari data ini`
- `cek anomaly dari report ini`

**Contoh:**
```text
report: ringkas KPI ini jadi executive summary
```

---

## 6) `docs`
**Fungsi:** SOP, dokumentasi, handover

**Keywords:**
- `docs:`
- `pakai docs:`
- `buat SOP`
- `rapikan dokumentasi ini`
- `ubah catatan ini jadi dokumen`
- `buat handover doc`

**Contoh:**
```text
docs: ubah catatan ini jadi SOP
```

---

## 7) `support`
**Fungsi:** triase issue customer, severity, first response

**Keywords:**
- `support:`
- `pakai support:`
- `triage issue customer ini`
- `buat first response`
- `cek severity tiket ini`
- `buat balasan awal customer`

**Contoh:**
```text
support: triage issue ini dan buat first response
```

---

## 8) `sales`
**Fungsi:** lead brief, outreach, follow-up

**Keywords:**
- `sales:`
- `pakai sales:`
- `buat lead brief`
- `draft follow-up prospect`
- `buat outreach`
- `ringkas pipeline ini`

**Contoh:**
```text
sales: buat lead brief dari info ini
```

---

## 9) `competitor`
**Fungsi:** pantau kompetitor, pricing, market intel

**Keywords:**
- `competitor:`
- `pakai competitor:`
- `ringkas update kompetitor ini`
- `cek pricing kompetitor`
- `jelaskan dampak perubahan ini`
- `buat market intel`

**Contoh:**
```text
competitor: ringkas update ini dan jelaskan dampaknya
```

---

## 10) `code-review`
**Fungsi:** review PR, test gap, risk teknis

**Keywords:**
- `code-review:`
- `pakai code-review:`
- `review PR ini`
- `cek risk teknis`
- `cari missing tests`
- `review diff ini`

**Contoh:**
```text
code-review: review PR summary ini
```

---

## Shortcut paling gampang diingat

- campuran / bingung -> `office-main`
- meeting -> `minutes`
- email -> `inbox`
- proyek -> `project`
- angka / KPI -> `report`
- dokumen -> `docs`
- customer issue -> `support`
- lead / prospect -> `sales`
- kompetitor -> `competitor`
- PR / code -> `code-review`

## Rekomendasi praktis

Kalau mau konsisten dan gampang dipakai setiap hari, pakai format ini:

```text
office-main: ...
minutes: ...
inbox: ...
project: ...
report: ...
docs: ...
support: ...
sales: ...
competitor: ...
code-review: ...
```
