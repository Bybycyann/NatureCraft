data modify storage naturecraft:0 model.dark_oak_pot set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "towards": false,\
    "item_name": {"translate":"","fallback":"深色橡树盆栽"},\
    "display": {\
      "model": "naturecraft:0/dark_oak_pot"\
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
      "const": {\
        "place": {\
        "sound": "block.stone.place"\
        }\
      }\
    }\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"dark_oak_pot",model:"naturecraft:0/dark_oak_pot",count:1,type:0}