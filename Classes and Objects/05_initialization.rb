class Spaceship
    def initialize(name, power_level)
        @name = name
        @power_level = power_level
    end
end

ship = Spaceship.new("Dreadnought", 100)
p ship
