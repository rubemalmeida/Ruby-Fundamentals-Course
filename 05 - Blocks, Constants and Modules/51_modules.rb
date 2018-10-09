module SpaceStuff
    class Spaceship
    end
end
module API
    def self.hatch_list
        # retrieve hatch list
    end
end
hatches = API.hatch_list
ship = SpaceStuff::Spaceship.new


module SecondSpaceStuff
    module API
        def self.hatch_list
            # retrieve hatch list
        end
    end
end
hatches = SecondSpaceStuff::API.hatch_list


module AirControl
    def measure_oxygen
        # ...
    end
end
class Spaceship
    include AirControl
    # ...
end
ship = Spaceship.new
ship.measure_oxygen


module Docking
    def get_docking_params
        # returns params common to all spaceships
    end
end
class Spaceship
    extend Docking
end
Spaceship.get_docking_params


module Docking
    module ClassMethods    
        def get_docking_params
            # returns params common to all spaceships
        end
    end
    def dock
        # ...
    end
end
class Spaceship
    include Docking
    extend Docking::ClassMethods
end


module Docking
    module ClassMethods    
        def get_docking_params
            # returns params common to all spaceships
        end
    end
    def self.included(base)
        base.extend(ClassMethods)
    end
    def dock
        # ...
    end
end


module AirControl
    attr_accessor :oxygen_level
    def measure_oxygen
        # ...
        self.oxygen_level = measure_oxygen
    end
    def start_pump
        @pump_status = :started
    end
end