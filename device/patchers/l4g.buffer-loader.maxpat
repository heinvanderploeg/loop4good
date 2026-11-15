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
          "id": "drop",
          "maxclass": "live.drop",
          "patching_rect": [
            80.0,
            40.0,
            60.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "float"
          ],
          "varname": "sample_drop",
          "parameter_enable": 1
        }
      },
      {
        "box": {
          "id": "sprintf",
          "maxclass": "newobj",
          "text": "sprintf replace %s",
          "patching_rect": [
            80.0,
            90.0,
            120.0,
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
          "id": "buf",
          "maxclass": "newobj",
          "text": "buffer~ l4g_sample 600000 2",
          "patching_rect": [
            80.0,
            140.0,
            160.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "bang"
          ]
        }
      },
      {
        "box": {
          "id": "info",
          "maxclass": "newobj",
          "text": "info~ l4g_sample",
          "patching_rect": [
            300.0,
            140.0,
            100.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 6,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "route-ms",
          "maxclass": "newobj",
          "text": "route ms",
          "patching_rect": [
            300.0,
            180.0,
            60.0,
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
          "id": "msg-info",
          "maxclass": "message",
          "text": "ms",
          "patching_rect": [
            260.0,
            140.0,
            30.0,
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
          "id": "out-len",
          "maxclass": "outlet",
          "patching_rect": [
            330.0,
            240.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "lengthMs"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "drop",
            0
          ],
          "destination": [
            "sprintf",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "sprintf",
            0
          ],
          "destination": [
            "buf",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buf",
            1
          ],
          "destination": [
            "msg-info",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "msg-info",
            0
          ],
          "destination": [
            "info",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "info",
            3
          ],
          "destination": [
            "route-ms",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "route-ms",
            0
          ],
          "destination": [
            "out-len",
            0
          ],
          "hidden": 0
        }
      }
    ]
  }
}