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
      50.0,
      50.0,
      1200.0,
      800.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "devicewidth": 850.0,
    "description": "Four playhead sample looper",
    "digest": "Loop4Good MVP",
    "boxes": [
      {
        "box": {
          "id": "bp-load",
          "maxclass": "bpatcher",
          "name": "patchers/l4g.buffer-loader.maxpat",
          "patching_rect": [
            40.0,
            40.0,
            180.0,
            80.0
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "offset": [
            0.0,
            0.0
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "bp-mix",
          "maxclass": "bpatcher",
          "name": "patchers/l4g.mixer.maxpat",
          "patching_rect": [
            40.0,
            480.0,
            120.0,
            80.0
          ],
          "numinlets": 8,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "offset": [
            0.0,
            0.0
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "plugout",
          "maxclass": "newobj",
          "text": "plugout~",
          "patching_rect": [
            40.0,
            580.0,
            60.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "pattr",
          "maxclass": "newobj",
          "text": "pattrstorage Loop4Good @autorestore 1",
          "patching_rect": [
            700.0,
            40.0,
            220.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ]
        }
      },
      {
        "box": {
          "id": "thisdev",
          "maxclass": "newobj",
          "text": "live.thisdevice",
          "patching_rect": [
            700.0,
            80.0,
            103.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "int",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "play",
          "maxclass": "live.toggle",
          "varname": "global_play",
          "patching_rect": [
            120.0,
            200.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "presentation": 1,
          "presentation_rect": [
            20.0,
            20.0,
            40.0,
            40.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Play",
              "parameter_shortname": "Play",
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "buflen",
          "maxclass": "newobj",
          "text": "f 1000.",
          "patching_rect": [
            280.0,
            120.0,
            60.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "buflen_ms"
        }
      },
      {
        "box": {
          "id": "prepend-buf",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            280.0,
            80.0,
            70.0,
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
          "id": "bp-h1",
          "maxclass": "bpatcher",
          "name": "patchers/l4g.playhead.maxpat",
          "patching_rect": [
            400.0,
            180.0,
            200.0,
            120.0
          ],
          "numinlets": 6,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "offset": [
            0.0,
            0.0
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "d1s",
          "maxclass": "live.dial",
          "varname": "h1_start",
          "patching_rect": [
            700.0,
            180.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 1 Start %",
              "parameter_shortname": "H1S",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                0.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d1e",
          "maxclass": "live.dial",
          "varname": "h1_end",
          "patching_rect": [
            760.0,
            180.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 1 End %",
              "parameter_shortname": "H1E",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                25.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d1sp",
          "maxclass": "live.dial",
          "varname": "h1_speed",
          "patching_rect": [
            820.0,
            180.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 1 Speed",
              "parameter_shortname": "H1Spd",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
"parameter_initial": [
                    20.0
                  ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "speedmap1",
          "maxclass": "newobj",
          "text": "scale 0. 100. 0.25 4.",
          "patching_rect": [
            820.0,
            240.0,
            110.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms01",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            700.0,
            270.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms11",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            760.0,
            270.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "en1",
          "maxclass": "live.toggle",
          "varname": "h1_on",
          "patching_rect": [
            650.0,
            180.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 1 On",
              "parameter_shortname": "H1",
              "parameter_type": 2,
              "parameter_initial": [
                1
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "rev1",
          "maxclass": "live.toggle",
          "varname": "h1_rev",
          "patching_rect": [
            880.0,
            180.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 1 Rev",
              "parameter_shortname": "R1",
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "bp-h2",
          "maxclass": "bpatcher",
          "name": "patchers/l4g.playhead.maxpat",
          "patching_rect": [
            400.0,
            250.0,
            200.0,
            120.0
          ],
          "numinlets": 6,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "offset": [
            0.0,
            0.0
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "d2s",
          "maxclass": "live.dial",
          "varname": "h2_start",
          "patching_rect": [
            750.0,
            250.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 2 Start %",
              "parameter_shortname": "H2S",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                25.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d2e",
          "maxclass": "live.dial",
          "varname": "h2_end",
          "patching_rect": [
            810.0,
            250.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 2 End %",
              "parameter_shortname": "H2E",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                50.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d2sp",
          "maxclass": "live.dial",
          "varname": "h2_speed",
          "patching_rect": [
            870.0,
            250.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 2 Speed",
              "parameter_shortname": "H2Spd",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
"parameter_initial": [
                    20.0
                  ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "speedmap2",
          "maxclass": "newobj",
          "text": "scale 0. 100. 0.25 4.",
          "patching_rect": [
            870.0,
            310.0,
            110.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms02",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            750.0,
            340.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms12",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            810.0,
            340.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "en2",
          "maxclass": "live.toggle",
          "varname": "h2_on",
          "patching_rect": [
            700.0,
            250.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 2 On",
              "parameter_shortname": "H2",
              "parameter_type": 2,
              "parameter_initial": [
                1
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "rev2",
          "maxclass": "live.toggle",
          "varname": "h2_rev",
          "patching_rect": [
            930.0,
            250.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 2 Rev",
              "parameter_shortname": "R2",
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "bp-h3",
          "maxclass": "bpatcher",
          "name": "patchers/l4g.playhead.maxpat",
          "patching_rect": [
            400.0,
            320.0,
            200.0,
            120.0
          ],
          "numinlets": 6,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "offset": [
            0.0,
            0.0
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "d3s",
          "maxclass": "live.dial",
          "varname": "h3_start",
          "patching_rect": [
            800.0,
            320.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 3 Start %",
              "parameter_shortname": "H3S",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                50.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d3e",
          "maxclass": "live.dial",
          "varname": "h3_end",
          "patching_rect": [
            860.0,
            320.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 3 End %",
              "parameter_shortname": "H3E",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                75.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d3sp",
          "maxclass": "live.dial",
          "varname": "h3_speed",
          "patching_rect": [
            920.0,
            320.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 3 Speed",
              "parameter_shortname": "H3Spd",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
"parameter_initial": [
                    20.0
                  ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "speedmap3",
          "maxclass": "newobj",
          "text": "scale 0. 100. 0.25 4.",
          "patching_rect": [
            920.0,
            380.0,
            110.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms03",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            800.0,
            410.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms13",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            860.0,
            410.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "en3",
          "maxclass": "live.toggle",
          "varname": "h3_on",
          "patching_rect": [
            750.0,
            320.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 3 On",
              "parameter_shortname": "H3",
              "parameter_type": 2,
              "parameter_initial": [
                1
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "rev3",
          "maxclass": "live.toggle",
          "varname": "h3_rev",
          "patching_rect": [
            980.0,
            320.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 3 Rev",
              "parameter_shortname": "R3",
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "bp-h4",
          "maxclass": "bpatcher",
          "name": "patchers/l4g.playhead.maxpat",
          "patching_rect": [
            400.0,
            390.0,
            200.0,
            120.0
          ],
          "numinlets": 6,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "offset": [
            0.0,
            0.0
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "d4s",
          "maxclass": "live.dial",
          "varname": "h4_start",
          "patching_rect": [
            850.0,
            390.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 4 Start %",
              "parameter_shortname": "H4S",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
              "parameter_initial": [
                75.0
              ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d4e",
          "maxclass": "live.dial",
          "varname": "h4_end",
          "patching_rect": [
            910.0,
            390.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 4 End %",
              "parameter_shortname": "H4E",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
"parameter_initial": [
                    20.0
                  ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "d4sp",
          "maxclass": "live.dial",
          "varname": "h4_speed",
          "patching_rect": [
            970.0,
            390.0,
            44.0,
            48.0
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 4 Speed",
              "parameter_shortname": "H4Spd",
              "parameter_type": 1,
              "parameter_mmin": 0.0,
              "parameter_mmax": 100.0,
"parameter_initial": [
                    20.0
                  ],
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "speedmap4",
          "maxclass": "newobj",
          "text": "scale 0. 100. 0.25 4.",
          "patching_rect": [
            970.0,
            450.0,
            110.0,
            22.0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms04",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            850.0,
            480.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "ms14",
          "maxclass": "newobj",
          "text": "expr ($f1*0.01)*$f2",
          "patching_rect": [
            910.0,
            480.0,
            100.0,
            22.0
          ],
          "numinlets": 2,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "en4",
          "maxclass": "live.toggle",
          "varname": "h4_on",
          "patching_rect": [
            800.0,
            390.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 4 On",
              "parameter_shortname": "H4",
              "parameter_type": 2,
              "parameter_initial": [
                1
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "rev4",
          "maxclass": "live.toggle",
          "varname": "h4_rev",
          "patching_rect": [
            1030.0,
            390.0,
            40.0,
            40.0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Head 4 Rev",
              "parameter_shortname": "R4",
              "parameter_type": 2
            }
          }
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "play",
            0
          ],
          "destination": [
            "bp-h1",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d1s",
            0
          ],
          "destination": [
            "ms01",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d1e",
            0
          ],
          "destination": [
            "ms11",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms01",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms11",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms01",
            0
          ],
          "destination": [
            "bp-h1",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms11",
            0
          ],
          "destination": [
            "bp-h1",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d1sp",
            0
          ],
          "destination": [
            "speedmap1",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "speedmap1",
            0
          ],
          "destination": [
            "bp-h1",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "rev1",
            0
          ],
          "destination": [
            "bp-h1",
            4
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "en1",
            0
          ],
          "destination": [
            "bp-h1",
            5
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h1",
            0
          ],
          "destination": [
            "bp-mix",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h1",
            1
          ],
          "destination": [
            "bp-mix",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "play",
            0
          ],
          "destination": [
            "bp-h2",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d2s",
            0
          ],
          "destination": [
            "ms02",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d2e",
            0
          ],
          "destination": [
            "ms12",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms02",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms12",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms02",
            0
          ],
          "destination": [
            "bp-h2",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms12",
            0
          ],
          "destination": [
            "bp-h2",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d2sp",
            0
          ],
          "destination": [
            "speedmap2",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "speedmap2",
            0
          ],
          "destination": [
            "bp-h2",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "rev2",
            0
          ],
          "destination": [
            "bp-h2",
            4
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "en2",
            0
          ],
          "destination": [
            "bp-h2",
            5
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h2",
            0
          ],
          "destination": [
            "bp-mix",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h2",
            1
          ],
          "destination": [
            "bp-mix",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "play",
            0
          ],
          "destination": [
            "bp-h3",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d3s",
            0
          ],
          "destination": [
            "ms03",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d3e",
            0
          ],
          "destination": [
            "ms13",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms03",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms13",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms03",
            0
          ],
          "destination": [
            "bp-h3",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms13",
            0
          ],
          "destination": [
            "bp-h3",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d3sp",
            0
          ],
          "destination": [
            "speedmap3",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "speedmap3",
            0
          ],
          "destination": [
            "bp-h3",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "rev3",
            0
          ],
          "destination": [
            "bp-h3",
            4
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "en3",
            0
          ],
          "destination": [
            "bp-h3",
            5
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h3",
            0
          ],
          "destination": [
            "bp-mix",
            4
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h3",
            1
          ],
          "destination": [
            "bp-mix",
            5
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "play",
            0
          ],
          "destination": [
            "bp-h4",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d4s",
            0
          ],
          "destination": [
            "ms04",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d4e",
            0
          ],
          "destination": [
            "ms14",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms04",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "buflen",
            0
          ],
          "destination": [
            "ms14",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms04",
            0
          ],
          "destination": [
            "bp-h4",
            1
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "ms14",
            0
          ],
          "destination": [
            "bp-h4",
            2
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "d4sp",
            0
          ],
          "destination": [
            "speedmap4",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "speedmap4",
            0
          ],
          "destination": [
            "bp-h4",
            3
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "rev4",
            0
          ],
          "destination": [
            "bp-h4",
            4
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "en4",
            0
          ],
          "destination": [
            "bp-h4",
            5
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h4",
            0
          ],
          "destination": [
            "bp-mix",
            6
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-h4",
            1
          ],
          "destination": [
            "bp-mix",
            7
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-load",
            0
          ],
          "destination": [
            "prepend-buf",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "prepend-buf",
            0
          ],
          "destination": [
            "buflen",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-mix",
            0
          ],
          "destination": [
            "plugout",
            0
          ],
          "hidden": 0
        }
      },
      {
        "patchline": {
          "source": [
            "bp-mix",
            1
          ],
          "destination": [
            "plugout",
            1
          ],
          "hidden": 0
        }
      }
    ]
  }
}