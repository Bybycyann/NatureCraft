$execute store success score #_for.boole stk.var $(condition)
execute if score #_for.boole stk.var matches 0 run return 0
$$(function)
return 1