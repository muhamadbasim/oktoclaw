# oktoclaw

Koleksi template dan workflow **OpenClaw multi-agent** untuk kebutuhan kantor.

Repo ini berisi dua bagian utama:

- `office-personas/` → template persona/use case kantor berbasis `SOUL.md`
- `openclaw-office-stack/` → paket implementasi multi-instance/multi-agent yang lebih lengkap, termasuk prompt, examples, cheatsheet, dan test plan

## Isi Repo

### 1. `office-personas/`
Template cepat untuk 10 use case kantor:
- project coordination
- standup facilitator
- meeting notes
- inbox triage
- report analyst
- code reviewer
- docs writer
- sales assistant
- support triage
- competitor watch

Cocok kalau kamu mau ambil `SOUL.md` per peran dan pakai manual.

### 2. `openclaw-office-stack/`
Versi yang lebih siap deploy untuk 1 server dengan banyak agent.

Termasuk:
- struktur stack kantor
- bootstrap script
- mapping agent
- cheatsheet penggunaan
- prompt siap copas
- contoh input-output
- test plan dan review checklist

## Arsitektur yang Dipakai

### Personal vs Office
Repo ini membedakan dua jalur:

- `main` → agent personal/default yang sudah ada sebelumnya
- `office-main` → dispatcher utama untuk workflow kantor

Agent spesialis kantor:
- `minutes`
- `inbox`
- `project`
- `report`
- `docs`
- `support`
- `sales`
- `competitor`
- `code-review`

Lihat:
- `openclaw-office-stack/AGENT-MAP.md`

## Start Cepat

### Lihat stack kantor
Buka:
- `openclaw-office-stack/README.md`

### Lihat prompt siap pakai
Buka:
- `openclaw-office-stack/PROMPTS.md`
- `openclaw-office-stack/PROMPTS-ADVANCED.md`

### Lihat cheatsheet
Buka:
- `openclaw-office-stack/CHEATSHEET.md`
- `openclaw-office-stack/CHEATSHEET-ADVANCED.md`

### Lihat contoh hasil ideal
Buka:
- `openclaw-office-stack/EXAMPLES.md`
- `openclaw-office-stack/EXAMPLES-ADVANCED.md`

### Jalankan pengujian
Buka:
- `openclaw-office-stack/TEST-PLAN.md`
- `openclaw-office-stack/TEST-RUN-CHECKLIST.md`

## Setup Ringkas

Contoh bootstrap:

```bash
bash /root/.openclaw/workspace/openclaw-office-stack/scripts/bootstrap.sh
```

Contoh registrasi agent:

```bash
openclaw agents add office-main --non-interactive --workspace /opt/openclaw/instances/main/workspace
for a in minutes inbox project report docs support sales competitor code-review; do
  openclaw agents add "$a" --non-interactive --workspace "/opt/openclaw/instances/$a/workspace"
done
```

## Rekomendasi Urutan Pakai

Kalau baru mulai, pakai dulu:
1. `office-main`
2. `minutes`
3. `inbox`
4. `project`

Lalu tambah:
- `report`
- `docs`
- `support`
- `sales`
- `competitor`
- `code-review`

## Catatan

Repo ini fokus ke **struktur, persona, prompt, dan workflow**.
Bukan produk final SaaS, tapi toolkit kerja buat membangun stack OpenClaw kantor yang rapi.
