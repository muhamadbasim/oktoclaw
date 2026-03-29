# OpenClaw Office Stack

Template multi-instance final untuk 10 persona kantor di 1 server.

## Naming yang Dipakai

- `main` = agent personal lama / default assistant
- `office-main` = dispatcher utama untuk stack kantor
- agent kantor spesialis = `minutes`, `inbox`, `project`, `report`, `docs`, `support`, `sales`, `competitor`, `code-review`

Lihat juga:
- `AGENT-MAP.md` — peta nama agent supaya tidak bingung

## Struktur

```text
/opt/openclaw/
  instances/
    main/
    minutes/
    inbox/
    project/
    report/
    docs/
    support/
    sales/
    competitor/
    code-review/
  shared/
    docs/
    logs/
    prompts/
```

## Daftar Persona

- `office-main` — front desk / dispatcher utama kantor
- `minutes` — meeting notes dan action items
- `inbox` — email/chat triage
- `project` — project coordination
- `report` — KPI dan summary report
- `docs` — dokumentasi/SOP
- `support` — support triage
- `sales` — outreach dan pipeline support
- `competitor` — competitor watch
- `code-review` — engineering review

## File Tambahan Penting

### Main prompt pack
- `PROMPTS.md` — prompt siap copas untuk semua 10 agent

### Fastest orientation
- `QUICK-REFERENCE.md` — 1 baris penjelasan untuk semua 10 agent
- `KEYWORDS.md` — keyword chat untuk manggil agent secara natural

### Quick references
- `CHEATSHEET.md` — panduan super singkat 1 halaman untuk penggunaan harian
- `CHEATSHEET-ADVANCED.md` — ringkasan cepat untuk 6 agent lanjutan

### Examples
- `EXAMPLES.md` — contoh input-output realistis untuk 4 agent awal
- `EXAMPLES-ADVANCED.md` — contoh input-output realistis untuk 6 agent sisanya
- `BEFORE-VS-AFTER.md` — contoh sederhana sebelum vs sesudah prompt tuning untuk semua 10 agent

### Supplemental prompt addendum
- `PROMPTS-ADVANCED.md` — lampiran fokus/ringkas untuk 6 agent advanced (bukan prompt pack utama)

### Testing
- `TEST-PLAN.md` — skenario nyata untuk menguji semua 10 agent
- `TEST-RUN-CHECKLIST.md` — checklist cepat saat review hasil uji
- `TEST-REPORT.md` — ringkasan hasil retest agent

## Cara Setup Cepat

### 1. Jalankan script bootstrap

```bash
bash /root/.openclaw/workspace/openclaw-office-stack/scripts/bootstrap.sh
```

### 2. Daftarkan agent ke OpenClaw

```bash
openclaw agents add office-main --non-interactive --workspace /opt/openclaw/instances/main/workspace
for a in minutes inbox project report docs support sales competitor code-review; do
  openclaw agents add "$a" --non-interactive --workspace "/opt/openclaw/instances/$a/workspace"
done
```

## Pemakaian Harian

### Pintu depan kantor
- pakai `office-main` untuk request campuran, triage, dan routing

### Specialist office agents
- `minutes` -> meeting / transcript
- `inbox` -> email / thread / reply drafting
- `project` -> task / owner / due date / blocker
- `report` -> KPI / trend / anomaly
- `docs` -> SOP / handover / docs
- `support` -> customer issue / triage
- `sales` -> lead / outreach / pipeline
- `competitor` -> market / pricing watch
- `code-review` -> PR / risk / test gap

### Untuk prompt
- buka `PROMPTS.md` sebagai referensi utama
- buka `PROMPTS-ADVANCED.md` hanya jika ingin versi fokus untuk 6 agent advanced
- buka `QUICK-REFERENCE.md` jika cuma butuh jawaban cepat agent mana untuk apa
- buka `KEYWORDS.md` jika mau manggil agent langsung dari chat/WhatsApp/Telegram

### Untuk pengujian kualitas
- jalanin `TEST-PLAN.md`
- nilai hasil pakai `TEST-RUN-CHECKLIST.md`
- lihat hasil ringkas di `TEST-REPORT.md`
- lihat `BEFORE-VS-AFTER.md` untuk memahami dampak prompt tuning

## Ringkasan

Sekarang stack kantor ini memakai:
- `office-main` sebagai dispatcher
- 9 agent spesialis kantor
- `main` personal tetap dibiarkan utuh agar tidak bentrok
