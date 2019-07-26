# Define the period of the clock
scoreboard players set lectern.core.tick_count lantern.const 16

# Initialize the global variable that tracks the current tick
scoreboard players add lectern.core.tick lantern.global 0

# Create an objective for storing tick assignments
scoreboard objectives add lec.core.tick dummy

# Reset the infinite delayer
schedule function lectern.core.impl:v1/delayer 1

# Start the main loop
schedule function lectern.core.impl:v1/main 1
