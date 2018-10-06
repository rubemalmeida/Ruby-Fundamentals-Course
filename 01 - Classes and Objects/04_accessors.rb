class Spaceship
    attr_accessor :destination
    attr_reader :name
    attr_writer :name
end

ship = Spaceship.new
ship.destination = "Earth"
ship.name = "Dreadnought"
puts ship.inspect
puts ship.name
