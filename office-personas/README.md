# Office Personas for OpenClaw

Paket ini berisi 10 template persona/use case untuk kebutuhan kantor. Setiap folder punya `SOUL.md` yang bisa dipakai sebagai dasar persona terpisah.

## Isi Paket

1. `01-orion-project-coordinator` — koordinasi task, deadline, owner, blocker
2. `02-standup-facilitator` — standup async dan ringkasan tim
3. `03-minutes-meeting-notes` — notulen rapat dan action items
4. `04-inbox-triage` — triase email/chat dan draft balasan
5. `05-report-analyst` — ringkasan KPI dan laporan periodik
6. `06-code-reviewer` — review code, test gap, risk review
7. `07-docs-writer` — SOP, README, handover, dokumentasi internal
8. `08-sales-assistant` — lead brief, outreach draft, pipeline summary
9. `09-support-triage` — kategorisasi tiket dan draft respon awal
10. `10-competitor-watch` — pantau update kompetitor dan market intel

## Cara Pakai - Paling Sederhana

### Opsi A: 1 persona utama + spesialis sebagai referensi
Gunakan satu persona utama untuk chat sehari-hari, lalu copy sebagian aturan dari folder yang sesuai ketika ingin membuat persona baru.

### Opsi B: 1 workspace per persona
Buat struktur seperti ini:

```text
/opt/openclaw/instances/
  main/workspace/
  project/workspace/
  standup/workspace/
  minutes/workspace/
  inbox/workspace/
```

Lalu untuk tiap workspace, salin file template yang dibutuhkan menjadi `SOUL.md`.

Contoh:

```bash
cp /root/.openclaw/workspace/office-personas/01-orion-project-coordinator/SOUL.md /opt/openclaw/instances/project/workspace/SOUL.md
cp /root/.openclaw/workspace/office-personas/03-minutes-meeting-notes/SOUL.md /opt/openclaw/instances/minutes/workspace/SOUL.md
cp /root/.openclaw/workspace/office-personas/04-inbox-triage/SOUL.md /opt/openclaw/instances/inbox/workspace/SOUL.md
```

## Konfigurasi Workspace per Persona

Isi minimal `openclaw.json` per instance:

```json
{
  "agents": {
    "defaults": {
      "workspace": "/opt/openclaw/instances/project/workspace"
    }
  }
}
```

Buat file berbeda untuk tiap persona, hanya path `workspace`-nya yang berubah.

## Cara Menggunakan Setiap Persona

### 1) Project Coordinator
**Input cocok:** daftar task, status proyek, catatan blocker

**Prompt contoh:**
- "Ringkas status proyek A dari catatan ini"
- "Ubah ini jadi daftar task dengan owner dan due date"
- "Buat weekly update untuk manajer"

### 2) Standup Facilitator
**Input cocok:** update tim mentah dari chat

**Prompt contoh:**
- "Rapikan standup tim ini"
- "Buat ringkasan blocker dari 8 update berikut"
- "Susun recap standup hari ini"

### 3) Meeting Notes
**Input cocok:** transcript meeting, poin rapat, voice transcript

**Prompt contoh:**
- "Buat notulen dari transcript ini"
- "Ekstrak action items dan keputusan"
- "Buat versi eksekutif 5 bullet"

### 4) Inbox Triage
**Input cocok:** email thread, daftar pesan masuk, tiket internal

**Prompt contoh:**
- "Triage 12 email ini: urgent / action / FYI"
- "Draft balasan profesional untuk email ini"
- "Buat digest inbox hari ini"

### 5) Report Analyst
**Input cocok:** angka KPI, CSV ringkas, dashboard notes

**Prompt contoh:**
- "Ringkas KPI mingguan ini"
- "Bandingkan performa minggu ini vs minggu lalu"
- "Sorot anomaly dan tindak lanjut"

### 6) Code Reviewer
**Input cocok:** diff, PR summary, commit list

**Prompt contoh:**
- "Review diff ini dan kelompokkan temuan berdasarkan severity"
- "Cari test gap dari perubahan ini"
- "Apa risk terbesar dari implementasi ini?"

### 7) Docs Writer
**Input cocok:** SOP mentah, catatan onboarding, README lama

**Prompt contoh:**
- "Ubah catatan ini jadi SOP"
- "Rapikan dokumentasi onboarding internal"
- "Buat README yang mudah dipahami tim baru"

### 8) Sales Assistant
**Input cocok:** lead list, profil akun, catatan call

**Prompt contoh:**
- "Buat outreach draft untuk lead ini"
- "Ringkas account brief sebelum meeting"
- "Buat pipeline summary mingguan"

### 9) Support Triage
**Input cocok:** ticket customer, chat support, issue report

**Prompt contoh:**
- "Kategorikan tiket ini dan tentukan severity"
- "Buat draft jawaban awal ke customer"
- "Pisahkan internal escalation note dan customer reply"

### 10) Competitor Watch
**Input cocok:** link berita, changelog kompetitor, pricing update

**Prompt contoh:**
- "Ringkas perubahan kompetitor ini"
- "Apa dampaknya ke positioning kita?"
- "Buat weekly market intel digest"

## Rekomendasi Implementasi Bertahap

Mulai dari 3 dulu:
1. `03-minutes-meeting-notes`
2. `04-inbox-triage`
3. `01-orion-project-coordinator`

Kalau sudah stabil, tambah:
4. `07-docs-writer`
5. `05-report-analyst`

Sisanya aktifkan sesuai kebutuhan tim.

## Tips Operasional

- 1 persona = 1 workspace bila ingin memori dan tone terpisah
- Jangan campur persona personal dengan persona kantor dalam workspace yang sama
- Simpan knowledge bersama di folder terpisah, bukan di `MEMORY.md` personal
- Pakai cron ringan untuk recap harian/mingguan, bukan polling agresif
- Semua template ini sebaiknya dikustom lagi sesuai istilah dan alur kerja kantor

## Langkah Berikutnya

Kalau mau, langkah berikut paling masuk akal adalah:
1. pilih 3 persona pertama yang benar-benar akan dipakai
2. aku bantu kustom isi `SOUL.md`-nya ke konteks kantormu
3. baru setelah itu buat struktur multi-instance final
