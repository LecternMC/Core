# Run initialization if this is the highest lectern.core.impl version
execute if score lectern.core.impl lantern.versions matches 1 run function lectern.core.impl:v1/initialize

# Otherwise, run the infinite delayer
function lectern.core.impl:v1/delayer
