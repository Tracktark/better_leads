# Counts number of animals tied to a leash knot and puts result into better_leads:counter Count
# Should be called with X Y Z arguments of the leash knot
$execute store result storage better_leads:counter Count int 1 if entity @e[distance=..20, nbt={Leash:{X:$(X), Y: $(Y), Z: $(Z)}}]
