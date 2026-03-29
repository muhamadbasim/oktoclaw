# TEST-RUN-CHECKLIST.md - Quick checklist when testing office agents

## Hal yang dicek di semua agent

- Apakah output langsung berguna?
- Apakah formatnya jelas?
- Apakah agent menghindari ngarang owner / deadline / angka / fakta?
- Apakah next step-nya konkret?
- Apakah hasilnya terlalu generic?

## Red flags

- terlalu banyak filler
- terlalu kabur / corporate-speak
- tidak memisahkan facts vs assumptions
- melewatkan action items / deadline / pertanyaan penting
- terlalu percaya diri padahal info kurang

## Kalau output kurang bagus

Ulangi dengan tambahan instruksi:
- "pakai format eksplisit"
- "jangan mengarang"
- "pisahkan decision vs action items"
- "fokus ke next actions"
- "tulis missing info secara eksplisit"

## Benchmark file

- core examples: `EXAMPLES.md`
- advanced examples: `EXAMPLES-ADVANCED.md`
- core prompts: `PROMPTS.md`
- advanced prompts: `PROMPTS-ADVANCED.md`
