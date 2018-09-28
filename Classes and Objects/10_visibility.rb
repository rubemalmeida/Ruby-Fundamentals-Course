class Spaceship
    def launch
        betten_hatches
        # do ither fun launch activities
    end

    attr_reader :call_sign
    protected :call_sign

    def initialize
        @call_sign = "Dreadnought"
    end

    def call_sign_matches?(other)
        call_sign == other.call_sign
    end
end

class SpirelySpaceship < Spaceship
    def initialize
        @call_sign = "Fast cruiser"
    end
end

ship = Spaceship.new
fast_ship = SpirelySpaceship.new

puts fast_ship.call_sign_matches?(ship)
puts ship.call_sign
