data modify storage naturecraft:main template.base set value {\
  "display": {\
    "common": {\
      "transformation": {\
        "translation": [0.0f,0.5f,0.0f]\
      }\
    }\
  },\
  "interaction_box": {\
    "height": 1.0,\
    "width": 1.0,\
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
      "path": "base/group/break1"\
    }\
  }\
}