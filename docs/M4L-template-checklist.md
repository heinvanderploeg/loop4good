# M4L-template checklist (Live 12)

Gebruik deze lijst vóór je een Loop4Good-build **freezet** naar `.amxd` en vóór je een release commit. Afvinken in **Ableton Live 12** met **Max for Live** ingeschakeld.

Vereisten:

- Ableton Live **12.0+** (getest op jouw patchversie)
- Max for Live (meestal via Live Suite of aparte licentie)
- Optioneel: **Max 8** voor bewerken van bron-`.maxpat`-bestanden buiten Live

## 1. Nieuw device van template

- [ ] In Live: **Create** → **Insert Max Device** → **Max Instrument** (of equivalent M4L Instrument-template).
- [ ] Root-patcher openen in Max; structuur uit repo overnemen of `device/Loop4Good.maxpat` als basis gebruiken.
- [ ] Subpatchers `patchers/l4g.*.maxpat` staan relatief t.o.v. root (bpatchers laden zonder padfouten).

## 2. M4L-conventies (root)

- [ ] **`live.thisdevice`** aanwezig; device initialiseert correct bij load op een MIDI-track.
- [ ] **`pattrstorage`** met `@autorestore 1` — parameters herstellen na herladen van de Live-set.
- [ ] **`devicewidth`** ingesteld; presentation past in device-paneel zonder horizontale scroll.
- [ ] **Presentation mode** aan voor UI-objecten; patching mode alleen voor onderhoud.
- [ ] Audio uit via **`plugout~`** (stereo) of projectconforme routing; geen openstaande signal chains.

## 3. Parameters en UI

- [ ] Alle Live-parameters zichtbaar in **Configure** / parameterkoppeling; geen “orphan” dials.
- [ ] `live.drop` (Sample) accepteert WAV/AIFF en triggert buffer-load.
- [ ] Global: **Play**, **Master** reageren vloeiend (geen klikken bij ramp).
- [ ] Per **Head 1–4**: On, loop start/end, Speed, Reverse, Level — elk onafhankelijk.
- [ ] Standaard loop-regio’s na load: 0–25%, 25–50%, 50–75%, 75–100% (of bewust afwijkend gedocumenteerd).

## 4. Audio-engine (smoke test)

- [ ] Sample laden; vier heads spelen parallel zonder dropout op 128-sample buffer (of jouw standaard).
- [ ] Loop end > loop start (minimale regiolengte hoorbaar/logisch).
- [ ] Speed en Reverse per head audibel correct.
- [ ] Master level muteert output zonder DC-offset of hangende `line~`.

## 5. Live-set persistentie

- [ ] Live-set opslaan, Live herstarten, set openen — **alle parameterwaarden** hersteld via pattrstorage.
- [ ] Sample-pad of drop-pad gedrag na reload gedocumenteerd (sample opnieuw droppen indien nodig).

## 6. Freeze naar `.amxd`

- [ ] In Max: **File** → **Save As** → frozen **`.amxd`** (bijv. `device/Loop4Good.amxd`).
- [ ] Geen ontbrekende abstractions: subpatchers zitten **in** de frozen device of expliciet gebundeld.
- [ ] Frozen device op schone MIDI-track slepen — zelfde gedrag als unframed `.maxpat`.
- [ ] `.amxd` **niet** committen met per ongeluk gegenereerde build-artefacten buiten `device/` (zie `.gitignore`).

## 7. Repo-sync

- [ ] Wijzigingen in `device/**/*.maxpat` gecommit; README/ontwikkelstappen nog actueel.
- [ ] Geen lokale paden of machine-specifieke bpatcher-paden in JSON.

## 8. Platform (optioneel)

- [ ] macOS: Intel en/of Apple Silicon zoals je doelgroep vereist.
- [ ] Windows 11 + Live 12 (indien je cross-platform uitgeeft).

---

**Laatste verificatie:** datum / Live-build / Max-build / tester

**Opmerkingen:**

_(vrij veld voor afwijkingen of bekende beperkingen)_