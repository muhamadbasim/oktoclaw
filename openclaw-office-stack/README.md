# OpenClaw Office Stack

Template multi-instance final untuk 10 persona kantor di 1 server.

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

- `main` — front desk / dispatcher utama
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

### Core 4
- `CHEATSHEET.md` — panduan super singkat 1 halaman untuk penggunaan harian
- `PROMPTS.md` — prompt siap copas untuk 4 agent awal
- `EXAMPLES.md` — contoh input-output realistis untuk 4 agent awal

### Advanced 6
- `CHEATSHEET-ADVANCED.md` — ringkasan cepat untuk 6 agent sisanya
- `PROMPTS-ADVANCED.md` — prompt siap copas untuk 6 agent sisanya
- `EXAMPLES-ADVANCED.md` — contoh input-output realistis untuk 6 agent sisanya

### Testing
- `TEST-PLAN.md` — skenario nyata untuk menguji semua 10 agent
- `TEST-RUN-CHECKLIST.md` — checklist cepat saat review hasil uji

## Cara Setup Cepat

### 1. Jalankan script bootstrap

```bash
bash /root/.openclaw/workspace/openclaw-office-stack/scripts/bootstrap.sh
```

### 2. Daftarkan agent ke OpenClaw

```bash
for a in minutes inbox project report docs support sales competitor code-review; do
  openclaw agents add "$a" --non-interactive --workspace "/opt/openclaw/instances/$a/workspace"
done
```

## Pemakaian Harian

### Untuk 4 agent awal
- lihat `CHEATSHEET.md`
- pakai `PROMPTS.md`
- cek `EXAMPLES.md`

### Untuk 6 agent lanjutan
- lihat `CHEATSHEET-ADVANCED.md`
- pakai `PROMPTS-ADVANCED.md`
- cek `EXAMPLES-ADVANCED.md`

### Untuk pengujian kualitas
- jalanin `TEST-PLAN.md`
- nilai hasil pakai `TEST-RUN-CHECKLIST.md`

## Ringkasan

Sekarang semua 10 agent sudah punya:
- workspace
- persona / `SOUL.md`
- agent registration
- prompt reference
- example reference
- cheatsheet
- test plan
