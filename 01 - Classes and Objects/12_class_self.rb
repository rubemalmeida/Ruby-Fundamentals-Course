class Spaceship
    def self.thruster_count
        2
    end

    def cancel_launch
        self.destination = ""
        seatbelt_sign(:off)
    end
end
