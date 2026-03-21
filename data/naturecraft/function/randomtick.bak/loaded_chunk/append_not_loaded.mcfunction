# ```
# not_loaded_chunk.append(loaded_chunk[0])
# del loaded_chunk[0]
# ```
data modify storage naturecraft:main not_loaded_chunk append from storage naturecraft:main loaded_chunk[0]
data remove storage naturecraft:main loaded_chunk[0]