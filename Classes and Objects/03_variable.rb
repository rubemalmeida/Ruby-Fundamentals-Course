class Spaceship
    def launch(destination)
        @destination = destination
    end
    # go towards destination
end

ship = Spaceship.new
ship.launch("Earth")
puts ship.inspect