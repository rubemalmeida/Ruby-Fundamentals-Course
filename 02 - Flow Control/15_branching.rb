if can_lanuch?
    launch
else
    wait
end

message = if lander_cnt > 10 then "Launching" else "Waiting" end

launch if can_lanuch?

if fuel_level > 50
    set_fuel_light("green")
elsif fuel_level > 25
    set_fuel_light("yellow")
else
    set_fuel_light("red")
end