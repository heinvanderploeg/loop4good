# Loop4Good

Een open Max for Live-instrument: eenvoudige **Looplet**-kloon voor Ableton Live 12+ (Max for Live). Eén sample-buffer, vier onafhankelijke loop-playheads, gemixt naar stereo.

## Vereisten

- Ableton Live 12 (of nieuwer) met **Max for Live**
- Optioneel: Max 8 voor bewerken van de bron-`.maxpat`-bestanden

## Installeren

1. Clone deze repo.
2. Sleep [`device/Loop4Good.maxpat`](device/Loop4Good.maxpat) in een **MIDI-track** in Live (hele `device/` map moet intact blijven: root + `l4g.*.maxpat` in dezelfde folder).
3. Open het device in Presentation mode, drop een WAV/AIFF op **Sample**, zet **Play** aan en stel per **Head** loop-start/end, speed en level in.

### Openen lukt niet?

| Symptoom | Oplossing |
|----------|-----------|
| Dubbelklik in Finder doet niets / verkeerde app | Open via **Ableton Live** (niet via Cursor/VS Code). In Cursor zie je alleen JSON — dat is geen Max-editor. |
| Lege of grijze bpatchers | Alle `l4g.*.maxpat` moeten **naast** `Loop4Good.maxpat` in `device/` staan. Niet alleen het rootbestand kopiëren. |
| `live.*` / `plugout~` onbekend | Alleen in **Max for Live** (Live 12 Suite + M4L). Gebruik *Edit* op het device in Live, niet een losse Max 8 zonder Live-objecten. |
| Max-editor vanuit Live | MIDI-track → sleep device → klik **Edit** (pijl). Max opent met Live-objecten geladen. |

## Parameters (v1 scaffold)

| Groep | Parameter | Bereik |
|-------|-----------|--------|
| Global | Play | on/off |
| Global | Master | level (dB) |
| Global | Sample | `live.drop` |
| Head 1–4 | On | per playhead |
| Head 1–4 | Loop start / end | 0–100% van samplelengte |
| Head 1–4 | Speed | 0.25×–4× |
| Head 1–4 | Reverse | on/off |
| Head 1–4 | Level | dB |

Standaard loop-regio’s na load: Head 1 = 0–25%, Head 2 = 25–50%, Head 3 = 50–75%, Head 4 = 75–100%.

## Ontwikkelen (Development)

Bronbestanden staan onder `device/`; git volgt **`.maxpat`**, niet per se een frozen **`.amxd`**.

```
device/
  Loop4Good.maxpat       # M4L root-patcher
  l4g.buffer-loader.maxpat
  l4g.playhead.maxpat
  l4g.mixer.maxpat
```

### Workflow: template → maxpat → freeze

1. **Template** — Start in Live 12 een **Max Instrument** (M4L-template) of open `device/Loop4Good.maxpat` in Max. Zorg dat de root voldoet aan M4L-conventies (`live.thisdevice`, `pattrstorage @autorestore 1`, `devicewidth`, presentation UI).
2. **`.maxpat` bewerken** — Pas root en subpatchers in Max aan; test in Live op een MIDI-track. Commit wijzigingen aan `device/**/*.maxpat` in git; deel geen handmatig gekopieerde frozen blobs als bron van waarheid.
3. **Freeze `.amxd`** — Als het device stabiel is: Max → *Save As* → frozen device naar bijv. `device/Loop4Good.amxd`. Gebruik `.amxd` voor distributie; houd de repo in sync door de onderliggende `.maxpat`-bestanden bij te werken.

Voor een volledige Live 12-verificatie vóór release: [docs/M4L-template-checklist.md](docs/M4L-template-checklist.md).

## Roadmap (t.o.v. Ableton Looplet)

- [ ] Onafhankelijke pitch / timestretch per head
- [ ] Filter en granular per head
- [ ] Multi-out routing (per head aparte bus)
- [ ] Capture / record naar buffer
- [ ] Waveform-UI met sleepbare loop-markers

## Licentie

MIT — zie [LICENSE](LICENSE).