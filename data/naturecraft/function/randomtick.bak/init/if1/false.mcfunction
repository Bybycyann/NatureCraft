# ```
# stack[-1]['output'][0] = stack[-1]['pos'].copy()
# stack[-1]['output'][1].append(stack[-1]['y'])
# loaded_chunk.append(stack[-1]['output'])
# ```
data modify storage naturecraft:main io.stack[-1].output[0] set from storage naturecraft:main io.stack[-1].pos
data modify storage naturecraft:main io.stack[-1].output[1] append from storage naturecraft:main io.stack[-1].y
data modify storage naturecraft:main loaded_chunk append from storage naturecraft:main io.stack[-1].output