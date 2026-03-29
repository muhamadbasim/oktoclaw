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

- `CHEATSHEET.md` — panduan super singkat 1 halaman untuk penggunaan harian
- `PROMPTS.md` — prompt siap copas untuk 4 agent awal
- `EXAMPLES.md` — contoh input-output realistis agar hasil mudah dibayangkan

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

### 3. Sesuaikan persona utama yang mau diaktifkan dulu
Rekomendasi awal:
- `main`
- `minutes`
- `inbox`
- `project`

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

## Rekomendasi Operasional

### Phase 1
- `main`
- `minutes`
- `inbox`
- `project`

### Phase 2
- `docs`
- `report`
- `support`

### Phase 3
- `sales`
- `competitor`
- `code-review`

## Cara Kustom

### Ganti `SOUL.md`
Kalau mau, salin template persona dari folder:

```text
/root/.openclaw/workspace/office-personas/
```

Contoh:

```bash
cp /root/.openclaw/workspace/office-personas/03-minutes-meeting-notes/SOUL.md /opt/openclaw/instances/minutes/workspace/SOUL.md
cp /root/.openclaw/workspace/office-personas/04-inbox-triage/SOUL.md /opt/openclaw/instances/inbox/workspace/SOUL.md
cp /root/.openclaw/workspace/office-personas/01-orion-project-coordinator/SOUL.md /opt/openclaw/instances/project/workspace/SOUL.md
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
- mulai dari 4 instance dulu agar ringan

## Next Step yang Disarankan

Setelah bootstrap:
1. copy `SOUL.md` persona yang sesuai
2. aktifkan 4 instance awal
3. pakai `CHEATSHEET.md` untuk penggunaan harian cepat
4. pakai `PROMPTS.md` untuk prompt siap copas
5. cek `EXAMPLES.md` sebagai benchmark hasil
6. baru tambah persona lain
