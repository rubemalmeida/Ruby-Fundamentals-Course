class Spaceship
    def launch
        betten_hatches
        # do ither fun launch activities
    end

    def betten_hatches
        puts "Batten the hatches!"
    end

    private :betten_hatches
end

class SpirelySpaceship < Spaceship
    def initialize
        betten_hatches # this ship is always ready to go
    end
end

ship = Spaceship.new
ship.send :betten_hatches

ship = SpirelySpaceship.new
