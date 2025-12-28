# ```
# 一种用于体素遍历的整数单遍算法
#
# 参考文献: An Integer One-Pass Algorithm for Voxel Traversal
# DOI: 10.1111/j.1467-8659.2004.00750.x
# ```

# Driving axis
function stk.raycast:block/driving_axis/_

data modify storage stk:io input set from storage stk:io output

# Core
execute if predicate {value:{type:"storage",storage:"stk:io",path:"input.axis"},range:0,condition:"value_check"} run function stk.raycast:block/x/_
execute if predicate {value:{type:"storage",storage:"stk:io",path:"input.axis"},range:1,condition:"value_check"} run function stk.raycast:block/y/_
execute if predicate {value:{type:"storage",storage:"stk:io",path:"input.axis"},range:2,condition:"value_check"} run function stk.raycast:block/z/_



