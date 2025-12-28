execute store result score #x NatureCraft.var run random value 0..15
execute store result score #y NatureCraft.var run random value 0..15
execute store result score #z NatureCraft.var run random value 0..15
execute if score #x NatureCraft.var matches 1.. run function naturecraft:random_tick/main/tp/x
execute if score #y NatureCraft.var matches 1.. run function naturecraft:random_tick/main/tp/y
execute if score #z NatureCraft.var matches 1.. run function naturecraft:random_tick/main/tp/z