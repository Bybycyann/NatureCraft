# ```
# loaded_chunk.append(loaded_chunk[0])
# del not_loaded_chunk[0]
# ```
data modify storage naturecraft:main loaded_chunk append from storage naturecraft:main not_loaded_chunk[0]
data remove storage naturecraft:main not_loaded_chunk[0]