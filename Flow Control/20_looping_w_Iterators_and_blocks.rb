[1, 2 3].each do
    puts "This is Serenity, please respond"
end

ships = Spaceship.all
ships.each { |ship| puts ship.name }


loop do
    go_another_light_year
    puts "This is not the edge of the universe"
end


10.upto(20) { |i| puts i }
20.downto(10) { |i| puts i }
3.times { puts "This is Serenity, please respond" }
1.step(10,2) { |i| puts i }
