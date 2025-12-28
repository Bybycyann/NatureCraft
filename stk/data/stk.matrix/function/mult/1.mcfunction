# ```
# class matrix(self,matrix:"list"):
#     def __init__:
#         self.array = matrix
#         self.row = len(matrix)
#         self.col = len(matrix[0])
#
# A = matrix(push[0])
# B = matrix(push[1])
# B = transpose(B)
# ```

# [栈压入]
data modify storage stk:io stack append value {}
data modify storage stk:io stack[-1].A.array set from storage stk:io push[0]
execute store result storage stk:io stack[-1].A.row int 1 run data get storage stk:io stack[-1].A.array
data modify storage stk:io stack[-1].temp set from storage stk:io stack[-1].A.array[0]
execute store result storage stk:io stack[-1].A.col int 1 run data get storage stk:io stack[-1].temp
data modify storage stk:io stack[-1].B.array set from storage stk:io push[1]
execute store result storage stk:io stack[-1].B.row int 1 run data get storage stk:io stack[-1].B.array
data modify storage stk:io stack[-1].temp set from storage stk:io stack[-1].B.array[1]
execute store result storage stk:io stack[-1].A.col int 1 run data get storage stk:io stack[-1].temp