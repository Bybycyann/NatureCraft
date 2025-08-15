data modify storage naturecraft:0 model.amethyst set value {\
  "template": {\
    "name": "naturecraft:main",\
    "nbt": "base"\
  },\
  "model":{\
    "type": "hang",\
    "towards": false,\
    "states": [\
      {\
        "model": {\
          "display": {\
            "common": {\
              "transformation": {\
                "left_rotation": [0.707f,0.0f,0.0f,0.707f]\
              }\
            },\
            "submodels": [{\
              "model": "naturecraft:0/amethyst/1",\
              "common": {\
                "transformation": {\
                  "left_rotation": [0.271f,0.653f,0.653f,0.271f],\
                  "translation": [0.0f,0.5f,0.0f]\
                }\
              }\
            }]\
          },\
          "collision_box": {\
            "offset_x": 0.0,\
            "offset_y": -0.2187,\
            "offset_z": 0.18745\
          },\
          "interaction_box": {\
            "offset_x": 0.0,\
            "offset_y": -0.25,\
            "offset_z": 0.21875\
          }\
        },\
        "facing": 3\
      },\
      {\
        "model": {\
          "display": {\
            "common": {\
              "transformation": {\
                "left_rotation": [1.0f,0.0f,0.0f,0.0f]\
              }\
            },\
            "submodels": [{\
              "model": "naturecraft:0/amethyst/1",\
              "common": {\
                "transformation": {\
                  "left_rotation": [0.383f,0.0f,0.924f,0.0f],\
                  "translation": [0.0f,0.5f,0.0f]\
                }\
              }\
            }]\
          },\
          "collision_box": {\
            "offset_x": 0.0,\
            "offset_y": -0.40615,\
            "offset_z": 0.0\
          },\
          "interaction_box": {\
            "offset_x": 0.0,\
            "offset_y": -0.46875,\
            "offset_z": 0.0\
          }\
        },\
        "facing": 0\
      },\
      {\
        "model": {\
          "display": {\
            "common": {\
              "transformation": {\
                "left_rotation": [0.707f,0.0f,0.0f,-0.707f]\
              }\
            },\
            "submodels": [{\
              "model": "naturecraft:0/amethyst/1",\
              "common": {\
                "transformation": {\
                  "left_rotation": [0.271f,-0.653f,0.653f,-0.271f],\
                  "translation": [0.0f,0.5f,0.0f]\
                }\
              }\
            }]\
          },\
          "collision_box": {\
            "offset_x": 0.0,\
            "offset_y": -0.2187,\
            "offset_z": -0.18745\
          },\
          "interaction_box": {\
            "offset_x": 0.0,\
            "offset_y": -0.25,\
            "offset_z": -0.21875\
          }\
        },\
        "facing": 2\
      },\
      {\
        "model": {\
          "display": {\
            "common": {\
              "transformation": {\
                "left_rotation": [0.0f,0.0f,-0.707f,0.707f]\
              }\
            },\
            "submodels": [{\
              "model": "naturecraft:0/amethyst/1",\
              "common": {\
                "transformation": {\
                  "left_rotation": [0.653f,0.653f,-0.271f,0.271f],\
                  "translation": [0.0f,0.5f,0.0f]\
                }\
              }\
            }]\
          },\
          "collision_box": {\
            "offset_x": 0.18745,\
            "offset_y": -0.2187,\
            "offset_z": 0.0\
          },\
          "interaction_box": {\
            "offset_x": 0.21875,\
            "offset_y": -0.25,\
            "offset_z": 0.0\
          }\
        },\
        "facing": 5\
      },\
      {\
        "model": {\
          "display": {\
            "common": {\
              "transformation": {\
                "left_rotation": [0.0f,0.0f,0.707f,0.707f]\
              }\
            },\
            "submodels": [{\
              "model": "naturecraft:0/amethyst/1",\
              "common": {\
                "transformation": {\
                  "left_rotation": [-0.653f,0.653f,0.271f,0.271f],\
                  "translation": [0.0f,0.5f,0.0f]\
                }\
              }\
            }]\
          },\
          "collision_box": {\
            "offset_x": -0.18745,\
            "offset_y": -0.2187,\
            "offset_z": 0.0\
          },\
          "interaction_box": {\
            "offset_x": -0.21875,\
            "offset_y": -0.25,\
            "offset_z": 0.0\
          }\
        },\
        "facing": 4\
      },\
    ],\
    "item_name": {"translate":"","fallback":"水晶簇"},\
    "display": {\
      "model": "naturecraft:0/amethyst/0",\
      "submodels":[{\
        "model": "naturecraft:0/amethyst/1",\
        "common": {\
          "transformation": {\
            "left_rotation":[0.0f,0.924f,0.0f,0.383f],\
            "translation": [0.0f,0.5f,0.0f]\
          }\
        }\
      }]\
    },\
    "light_level": 5,\
    "collision_box": {\
      "scale": 0.4374,\
      "offset_x": 0.0,\
      "offset_y": 0.0,\
      "offset_z": 0.0\
    },\
    "interaction_box": {\
      "height": 0.5,\
      "width": 0.5,\
    }\
  }\
}

function naturecraft:give {name:"naturecraft:0","nbt":"amethyst",model:"naturecraft:0/amethyst/0",count:1,type:1}