data modify storage stk:io push.s[1] set value -1
execute store result storage stk:io push.|dPos|[1] int -1 run data get storage stk:io stack[-1].dPos[1]