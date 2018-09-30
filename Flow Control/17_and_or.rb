lander = Lander.locate(lander_id) and lander.recall

lander = Lander.locate(lander_id)
lander.recall if lander


if engine.cut_out?
    engine.restart or enable_emergency_power    
end

if engine.cut_out?
    enable_emergency_power unless engine.restart
end
