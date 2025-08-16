data modify storage naturecraft:0 model.oak_pot set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
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
      "height": 0.5,\
      "width": 0.5,\
    },\
    "event": {\
      "random": {\
        "name": "naturecraft",\
        "path": "0/oak_pot/randomtick"\
      },\
      "const": {\
        "place": {\
        "sound": "block.stone.place"\
        }\
      }\
    }\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"oak_pot",model:"naturecraft:0/oak_pot/0",count:1,type:0}