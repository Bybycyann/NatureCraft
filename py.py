stack = list()
loaded_chunk = []
not_loaded_chunk = []

class random_tick(self):
   def main():
      return 0

def if_loaded():
  if (chunk not loaded):
      return 0
  else:
      return 1

i = len(loaded_chunk)
stack.append({})
for _ in range(i):
  stack[-1]['sub_chunk_pos'] = loaded_chunk[0][0].copy()
  stack[-1]['sub_chunk_pos'][0] *= 16
  stack[-1]['sub_chunk_pos'][2] *= 16
  boole = if_loaded()
  if (boole == 0):
    not_loaded_chunk.append(loaded_chunk[0])
    del loaded_chunk[0]
  else:
    j = len(loaded_chunk[0][1])
    stack[-1]['sub_chunk'] = loaded_chunk[0][1].copy()
    for _ in range(j):
      stack[-1]['sub_chunk_pos'][1] = stack[-1]['sub_chunk'][0] * 16
      random_tick.main()
      del stack[-1]['sub_chunk'][0]
    loaded_chunk.append(loaded_chunk[0])
    del loaded_chunk[0]
del stack[-1]

def count_if(i):
  while i > 1:
    stack[-1]['copy'] = not_loaded_chunk.copy()
    if (stack[-1]['copy'][0][0] == stack[-1]['pos']):
      return 1
    i -= 1