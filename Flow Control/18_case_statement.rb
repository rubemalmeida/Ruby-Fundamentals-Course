case distance_to_dock
when "far away"
    lander.maintain_thrust
when "coasting time"
    lander.kill_thrust
when "collision imminent"
    lander.reverse_thrust
end

thurst_power = case distance_to_dock
    when "far away"
        100
    when "coasting time"
        0
    when "collision imminent"
        -100
    end

thurst_power = case distance_to_dock
    when "far away" then 100
    when "coasting time" then 0
    when "collision imminent" then -100
    end

case unit
when lander
    lander.park
when Probe
    probe.retrieve_sample
    probe.transport_to_storage
else
    activate_alarm("Unidentified unit")
end

case
when distance_to_dock > 100
    lander.maintain_thrust
when distance_to_dock > 2
    lander.kill_thrust
else
    lander.reverse_thrust
end