class Spaceship
    @@thruster_count = 2
    def self.thruster_count
        @@thruster_count = 2
    end
end

puts Spaceship.thruster_count
