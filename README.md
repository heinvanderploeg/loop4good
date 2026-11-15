# Loop4Good

Een open Max for Live-instrument: eenvoudige **Looplet**-kloon voor Ableton Live 12+ (Max for Live). Eén sample-buffer, vier onafhankelijke loop-playheads, gemixt naar stereo.

## Vereisten

- Ableton Live 12 (of nieuwer) met **Max for Live**
- Optioneel: Max 8 voor bewerken van de bron-`.maxpat`-bestanden

## Installeren

1. Clone deze repo.
2. Sleep [`device/Loop4Good.maxpat`](device/Loop4Good.maxpat) in een **MIDI-track** in Live, of bewaar hem als `.amxd` via *Save As* in de Max-editor.
3. Open het device in Presentation mode, drop een WAV/AIFF op **Sample**, zet **Play** aan en stel per **Head** loop-start/end, speed en level in.

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

## Ontwikkelen

```
device/
  Loop4Good.maxpat       # M4L root-patcher
  patchers/
    l4g.buffer-loader.maxpat
    l4g.playhead.maxpat
    l4g.mixer.maxpat
```

Wijzig subpatchers in Max en sla op; `pattrstorage` met `@autorestore 1` bewaart instellingen in Live-sets.

Werk `.maxpat` bij in git; `.amxd` is optioneel (freeze vanuit Max → *Save As* naar `device/Loop4Good.amxd`).

## Roadmap (t.o.v. Ableton Looplet)

- [ ] Onafhankelijke pitch / timestretch per head
- [ ] Filter en granular per head
- [ ] Multi-out routing (per head aparte bus)
- [ ] Capture / record naar buffer
- [ ] Waveform-UI met sleepbare loop-markers

## Licentie

MIT — zie [LICENSE](LICENSE).