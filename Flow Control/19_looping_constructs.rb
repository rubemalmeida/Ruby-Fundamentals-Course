while high_alert?
    sound_system.play_siren_cycle
end

while high_alert? do sound_system.play_siren_cycle end

sound_system.play_siren_cycle while high_alert?


until ship.at_cruising_velocity?
    ship.accelerate
end

until ship.at_cruising_velocity? do ship.accelerate end

ship.accelerate until ship.at_cruising_velocity?


begin
    lighting.start_flashing
    sound_system.play_siren_cycle    
end while high_alert?

begin
    ship.accelerate
    make_fake_engine_noise
end until ship.at_cruising_velocity?


puts "Counting down to launch"

for i in [3, 2, 1]
    puts i
end

# print numbers from 1 to 10
for i in (1..10) do
    puts i
end
