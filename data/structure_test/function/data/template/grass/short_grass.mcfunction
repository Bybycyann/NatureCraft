data modify storage structure_test:grass template.short_grass set value {\
  "type": "none",\
  "display": {\
    "common": {\
      "transformation": {\
        "translation": [0.0f,0.5f,0.0f]\
      }\
    }\
  },\
  "interaction_box": {\
    "height": 0.8125,\
    "width": 0.875,\
    "offset_x": 0.0,\
    "offset_y": 0.0,\
    "offset_z": 0.0,\
    "response": true\
  },\
  "event": {\
    "place": {\
      "name": "naturecraft",\
      "path": "base/sound"\
    },\
    "left_click": {\
      "name": "naturecraft",\
      "path": "base/group/break2"\
    },\
    "const": {\
      "place": {"sound": "block.grass.place"},\
      "left_click": {"sound": "block.grass.break"}\
    }\
  }\
}