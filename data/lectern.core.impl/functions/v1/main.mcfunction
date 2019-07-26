# Increment the current tick variable
scoreboard players add lectern.core.tick lantern.global 1

# Adjust the value of the current tick variable if it is out of range
scoreboard players operation lectern.core.tick lantern.global %= lectern.core.tick_count lantern.const

# Run this function every tick
schedule function lectern.core.impl:v1/main 1
