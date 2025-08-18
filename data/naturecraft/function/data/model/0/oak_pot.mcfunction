# 默认
data modify storage naturecraft:0 model.oak_pot.0 set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "model": {\
      "name": "naturecraft:0",\
      "nbt": "oak_pot.0"\
    },\
    "towards": false,\
    "item_name": {"translate":"","fallback":"橡树盆栽"},\
    "display": {\
      "model": "naturecraft:0/oak_pot/0"\
    },\
    "collision_box": {\
      "scale": 0.5,\
      "offset_x": 0.0,\
      "offset_y": 0.0,\
      "offset_z": 0.0\
    },\
    "interaction_box": {\
      "height": 0.501,\
      "width": 0.501,\
    },\
    "event": {\
      "random": {\
        "name": "naturecraft",\
        "path": "0/oak_pot/randomtick"\
      },\
      "right_click": {},\
      "const": {\
        "place": {\
          "sound": "block.stone.place"\
        },\
        "random": {\
          "name": "naturecraft:0",\
          "nbt": "oak_pot.apple"\
        }\
      }\
    }\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"oak_pot.0",model:"naturecraft:0/oak_pot/0",count:1,type:0}

# 成熟变体
data modify storage naturecraft:0 model.oak_pot.apple set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "model": {\
      "name": "naturecraft:0",\
      "nbt": "oak_pot.apple"\
    },\
    "towards": false,\
    "item_name": {"translate":"","fallback":"橡树盆栽(成熟)"},\
    "display": {\
      "model": "naturecraft:0/oak_pot/apple"\
    },\
    "collision_box": {\
      "scale": 0.5,\
      "offset_x": 0.0,\
      "offset_y": 0.0,\
      "offset_z": 0.0\
    },\
    "interaction_box": {\
      "height": 0.501,\
      "width": 0.501,\
    },\
    "event": {\
      "right_click": {\
        "name": "naturecraft",\
        "path": "0/oak_pot/apple"\
      },\
      "const": {\
        "right_click": {\
          "name": "naturecraft:0",\
          "nbt": "oak_pot.0",\
          "loot_table": "naturecraft:0/oak_pot_apple"\
        }\
      }\
    }\
  }\
}