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
          "id": "in1l",
          "maxclass": "inlet~",
          "patching_rect": [
            40.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in1r",
          "maxclass": "inlet~",
          "patching_rect": [
            90.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in2l",
          "maxclass": "inlet~",
          "patching_rect": [
            150.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in2r",
          "maxclass": "inlet~",
          "patching_rect": [
            200.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in3l",
          "maxclass": "inlet~",
          "patching_rect": [
            260.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in3r",
          "maxclass": "inlet~",
          "patching_rect": [
            310.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in4l",
          "maxclass": "inlet~",
          "patching_rect": [
            370.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "in4r",
          "maxclass": "inlet~",
          "patching_rect": [
            420.0,
            40.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "add-l",
          "maxclass": "newobj",
          "text": "+~ 4",
          "patching_rect": [
            180.0,
            140.0,
            45.0,
            22.0
          ],
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "add-r",
          "maxclass": "newobj",
          "text": "+~ 4",
          "patching_rect": [
            260.0,
            140.0,
            45.0,
            22.0
          ],
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "mgain",
          "maxclass": "live.gain~",
          "patching_rect": [
            200.0,
            220.0,
            48.0,
            95.0
          ],
          "numinlets": 2,
          "numoutlets": 5,
          "parameter_enable": 1,
          "varname": "mastergain"
        }
      },
      {
        "box": {
          "id": "outl",
          "maxclass": "outlet~",
          "patching_rect": [
            190.0,
            360.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "outr",
          "maxclass": "outlet~",
          "patching_rect": [
            240.0,
            360.0,
            30.0,
            30.0
          ],
          "numinlets": 1,
          "numoutlets": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "in1l",
            0
          ],
          "destination": [
            "add-l",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in2l",
            0
          ],
          "destination": [
            "add-l",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in3l",
            0
          ],
          "destination": [
            "add-l",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in4l",
            0
          ],
          "destination": [
            "add-l",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in1r",
            0
          ],
          "destination": [
            "add-r",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in2r",
            0
          ],
          "destination": [
            "add-r",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in3r",
            0
          ],
          "destination": [
            "add-r",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "in4r",
            0
          ],
          "destination": [
            "add-r",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "add-l",
            0
          ],
          "destination": [
            "mgain",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "add-r",
            0
          ],
          "destination": [
            "mgain",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "mgain",
            0
          ],
          "destination": [
            "outl",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "mgain",
            1
          ],
          "destination": [
            "outr",
            0
          ],
          "hidden": 0
        }
      }
    ]
  }
}