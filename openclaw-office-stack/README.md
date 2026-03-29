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

## Cara Setup Cepat

### 1. Jalankan script bootstrap

```bash
bash /root/.openclaw/workspace/openclaw-office-stack/scripts/bootstrap.sh
```

Script ini akan membuat folder:
- `/opt/openclaw/instances/...`
- `/opt/openclaw/shared/...`
- workspace awal per persona
- `openclaw.json` per instance

### 2. Cek hasilnya

```bash
find /opt/openclaw -maxdepth 3 -type f | sort
```

### 3. Daftarkan agent ke OpenClaw

```bash
for a in minutes inbox project report docs support sales competitor code-review; do
  openclaw agents add "$a" --non-interactive --workspace "/opt/openclaw/instances/$a/workspace"
done
```

## Isi Tiap Instance

Setiap instance akan punya:
- `openclaw.json`
- `workspace/AGENTS.md`
- `workspace/SOUL.md`
- `workspace/USER.md`
- `workspace/IDENTITY.md`
- `workspace/TOOLS.md`
- `workspace/HEARTBEAT.md`
- `workspace/MEMORY.md`
- `workspace/memory/`

## Pola Penggunaan

### Opsi A — Semua instance berdiri sendiri
Pakai jika tiap persona ingin benar-benar terpisah.

### Opsi B — `main` sebagai pintu depan
Pakai `main` sebagai asisten utama. Persona lain dipakai sebagai instance spesialis saat dibutuhkan.

## Cara Kustom

### Ganti `SOUL.md`
Kalau mau, salin template persona dari folder:

```text
/root/.openclaw/workspace/office-personas/
```

### Edit identitas dan human context
Sesuaikan file berikut per instance:
- `IDENTITY.md`
- `USER.md`
- `TOOLS.md`

## Catatan Penting

- 1 persona = 1 workspace
- jangan share `MEMORY.md` antar persona berbeda
- file shared sebaiknya taruh di `/opt/openclaw/shared/`
- gunakan `main` untuk request campuran atau saat belum jelas harus pakai agent mana

## Pemakaian Harian

### Untuk 4 agent awal
- lihat `CHEATSHEET.md`
- pakai `PROMPTS.md`
- cek `EXAMPLES.md`

### Untuk 6 agent lanjutan
- lihat `CHEATSHEET-ADVANCED.md`
- pakai `PROMPTS-ADVANCED.md`
- cek `EXAMPLES-ADVANCED.md`

## Ringkasannya

Sekarang semua 10 agent sudah punya:
- workspace
- persona / `SOUL.md`
- agent registration
- prompt reference
- example reference
- cheatsheet
