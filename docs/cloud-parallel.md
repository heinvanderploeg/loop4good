# Parallel cloud build (Loop4Good)

Drie **onafhankelijke streams** vanaf `feat/mvp-device-scaffold`, zodat agents niet dezelfde bestanden wijzigen.

| Stream | Branch | Pad scope | PR-titel (voorstel) |
|--------|--------|-----------|---------------------|
| A | `feat/m4l-docs` | `docs/`, `README.md` | docs: M4L template checklist and dev workflow |
| B | `feat/m4l-engine` | `device/patchers/*.maxpat` | refactor: harden l4g playhead and buffer subpatchers |
| C | `feat/m4l-template-shell` | `device/Loop4Good.maxpat` | feat: align Loop4Good root with M4L template conventions |

## Starten in Cursor (Cloud Agent)

1. Zorg dat de workspace **de git root** is (`loop4good/`) en `origin` naar GitHub wijst.
2. Open **Cloud Agent** → repository `heinvanderploeg/loop4good`.
3. Start **drie agents tegelijk** (één per stream), elk met **base branch** `feat/mvp-device-scaffold`.
4. Plak per agent de prompt uit de secties hieronder.
5. Na merge-voorkeur: **A + B** parallel review → **C** → lokaal **freeze** + checklist invullen (vereist Live/Max).

## Agent A — docs

```text
Branch: feat/m4l-docs from feat/mvp-device-scaffold.
Add docs/M4L-template-checklist.md (NL, Live 12 M4L checklist).
Update README Development section: template → edit maxpat → freeze .amxd.
Do not edit device/*.maxpat.
Push and open PR to main.
```

## Agent B — engine

```text
Branch: feat/m4l-engine from feat/mvp-device-scaffold.
Only device/patchers/: clamp loop end>start (min 1ms), optional line~ on rate into sig~ in l4g.playhead.maxpat.
Do not edit Loop4Good.maxpat.
Push and PR to main.
```

## Agent C — M4L shell

```text
Branch: feat/m4l-template-shell from feat/mvp-device-scaffold.
Only device/Loop4Good.maxpat: live.thisdevice, pattrstorage @autorestore 1, devicewidth, presentation on UI.
Keep bpatchers patchers/l4g.*. Comment: verify once in Live M4L Instrument template.
Push and PR to main.
```

## Na de PR’s (lokaal)

- Live 12: nieuw device van **M4L Instrument-template**, wijzigingen uit PR C overnemen of root vervangen.
- Checklist in `docs/M4L-template-checklist.md` afvinken.
- Freeze → `device/Loop4Good.amxd`.

## SDK (optioneel)

Met `CURSOR_API_KEY` kun je dezelfde drie prompts parallel als **cloud** runs starten (`cloud.repos: [{ url: "https://github.com/heinvanderploeg/loop4good", ref: "feat/mvp-device-scaffold" }]`). Zie [Cursor SDK cloud runtime](https://cursor.com/docs/sdk).