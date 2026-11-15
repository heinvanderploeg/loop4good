{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100.0,
      100.0,
      900.0,
      700.0
    ],
    "bglocked": 0,
    "openinpresentation": 0,
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "boxes": [
      {
        "box": {
          "id": "in-play",
          "maxclass": "inlet",
          "patching_rect": [
            40.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "play"
        }
      },
      {
        "box": {
          "id": "in-l0",
          "maxclass": "inlet",
          "patching_rect": [
            100.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "loopStartMs"
        }
      },
      {
        "box": {
          "id": "in-l1",
          "maxclass": "inlet",
          "patching_rect": [
            160.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "loopEndMs"
        }
      },
      {
        "box": {
          "id": "in-spd",
          "maxclass": "inlet",
          "patching_rect": [
            220.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "speed"
        }
      },
      {
        "box": {
          "id": "in-rev",
          "maxclass": "inlet",
          "patching_rect": [
            280.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "reverse"
        }
      },
      {
        "box": {
          "id": "in-en",
          "maxclass": "inlet",
          "patching_rect": [
            340.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "comment": "enabled"
        }
      },
      {
        "box": {
          "id": "groove",
          "maxclass": "newobj",
          "text": "groove~ l4g_sample 2",
          "patching_rect": [
            120.0,
            260.0,
            130.0,
            22.0
          ],
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": [
            "signal",
            "signal",
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "sig-l0",
          "maxclass": "newobj",
          "text": "sig~",
          "patching_rect": [
            100.0,
            170.0,
            30.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "sig-l1",
          "maxclass": "newobj",
          "text": "sig~",
          "patching_rect": [
            160.0,
            170.0,
            30.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            120.0,
            330.0,
            48.0,
            95.0
          ],
          "numinlets": 2,
          "numoutlets": 5,
          "outlettype": [
            "signal",
            "signal",
            "",
            "float",
            "list"
          ],
          "parameter_enable": 1,
          "varname": "headgain"
        }
      },
      {
        "box": {
          "id": "out-l",
          "maxclass": "outlet~",
          "patching_rect": [
            110.0,
            460.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "L"
        }
      },
      {
        "box": {
          "id": "out-r",
          "maxclass": "outlet~",
          "patching_rect": [
            160.0,
            460.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "R"
        }
      },
      {
        "box": {
          "id": "msg-loop",
          "maxclass": "message",
          "text": "loop 1",
          "patching_rect": [
            260.0,
            120.0,
            45.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "msg-pos",
          "maxclass": "message",
          "text": "0",
          "patching_rect": [
            200.0,
            120.0,
            29.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "t-play",
          "maxclass": "newobj",
          "text": "t b b",
          "patching_rect": [
            40.0,
            100.0,
            40.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "sel-play",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            40.0,
            70.0,
            40.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "zero",
          "maxclass": "message",
          "text": "0",
          "patching_rect": [
            90.0,
            100.0,
            29.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "mult-rev",
          "maxclass": "newobj",
          "text": "* 1.",
          "patching_rect": [
            220.0,
            130.0,
            35.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "expr-rev",
          "maxclass": "newobj",
          "text": "expr $i1 ? -1. : 1.",
          "patching_rect": [
            280.0,
            100.0,
            110.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "gate-rate",
          "maxclass": "newobj",
          "text": "expr ($f2 > 0) * $f1 * $f3",
          "patching_rect": [
            220.0,
            170.0,
            140.0,
            22.0
          ],
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "pak-loop",
          "maxclass": "newobj",
          "text": "pak 0. 0.",
          "patching_rect": [
            100.0,
            130.0,
            55.800000000000004,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "unpack-loop",
          "maxclass": "newobj",
          "text": "unpack 0. 0.",
          "patching_rect": [
            100.0,
            155.0,
            74.4,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "expr-l0",
          "maxclass": "newobj",
          "text": "expr min($f1, $f2 - 1.)",
          "patching_rect": [
            100.0,
            185.0,
            142.6,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "expr-l1",
          "maxclass": "newobj",
          "text": "expr max($f1, $f2 + 1.)",
          "patching_rect": [
            220.0,
            185.0,
            142.6,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "line-rate",
          "maxclass": "newobj",
          "text": "line~ 50",
          "patching_rect": [
            40.0,
            215.0,
            49.6,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "in-play",
            0
          ],
          "destination": [
            "sel-play",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "sel-play",
            0
          ],
          "destination": [
            "t-play",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "sel-play",
            1
          ],
          "destination": [
            "zero",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "t-play",
            0
          ],
          "destination": [
            "msg-pos",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "t-play",
            1
          ],
          "destination": [
            "msg-loop",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "msg-pos",
            0
          ],
          "destination": [
            "groove",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "msg-loop",
            0
          ],
          "destination": [
            "groove",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "sig-l0",
            0
          ],
          "destination": [
            "groove",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "sig-l1",
            0
          ],
          "destination": [
            "groove",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in-spd",
            0
          ],
          "destination": [
            "gate-rate",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in-rev",
            0
          ],
          "destination": [
            "expr-rev",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "expr-rev",
            0
          ],
          "destination": [
            "gate-rate",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in-en",
            0
          ],
          "destination": [
            "gate-rate",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "groove",
            0
          ],
          "destination": [
            "gain",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "groove",
            1
          ],
          "destination": [
            "gain",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "gain",
            0
          ],
          "destination": [
            "out-l",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "gain",
            1
          ],
          "destination": [
            "out-r",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in-l0",
            0
          ],
          "destination": [
            "pak-loop",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in-l1",
            0
          ],
          "destination": [
            "pak-loop",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "pak-loop",
            0
          ],
          "destination": [
            "unpack-loop",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "unpack-loop",
            0
          ],
          "destination": [
            "expr-l0",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "unpack-loop",
            1
          ],
          "destination": [
            "expr-l0",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "unpack-loop",
            0
          ],
          "destination": [
            "expr-l1",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "unpack-loop",
            1
          ],
          "destination": [
            "expr-l1",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "expr-l0",
            0
          ],
          "destination": [
            "sig-l0",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "expr-l1",
            0
          ],
          "destination": [
            "sig-l1",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "gate-rate",
            0
          ],
          "destination": [
            "line-rate",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "zero",
            0
          ],
          "destination": [
            "line-rate",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "line-rate",
            0
          ],
          "destination": [
            "groove",
            0
          ],
          "hidden": 0
        }
      }
    ]
  }
}
