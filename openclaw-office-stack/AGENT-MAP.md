# AGENT-MAP.md - Naming map for the office stack

Biar tidak bingung, ini pemetaan agent yang dipakai sekarang.

## Personal / existing default
- `main` -> agent personal lama
- Identity: Emmyyy
- Workspace: `~/.openclaw/workspace`
- Fungsi: agent personal / direct assistant utama yang sudah ada sebelumnya

## Office stack
- `office-main` -> dispatcher utama untuk stack kantor
- Workspace: `/opt/openclaw/instances/main/workspace`
- Fungsi: front desk / triage / routing request kantor

## Specialist office agents
- `minutes` -> meeting notes
- `inbox` -> inbox triage
- `project` -> project coordination
- `report` -> KPI / reporting
- `docs` -> documentation
- `support` -> support triage
- `sales` -> sales assistant
- `competitor` -> competitor watch
- `code-review` -> code review

## Rule of thumb
- Untuk chat personal / asisten umum: `main`
- Untuk workflow kantor: mulai dari `office-main`
- Untuk tugas spesifik kantor: pakai specialist agent yang sesuai

## Recommended naming convention
- personal default tetap: `main`
- office dispatcher: `office-main`
- specialist office agents: gunakan nama fungsi langsung

## Kenapa tidak pakai `main` untuk kantor?
Karena `main` sudah dipakai agent personal lama. Daripada rename destruktif, lebih aman dan jelas memakai `office-main` sebagai dispatcher kantor.
