produce_spaceship(:freighter, :m, 100, 4)
produce_spaceship(type: :freighter, size: :m, fuel_tank_volume: 100, engine_count: 4)
def produce_spaceship(type: freighter, size: :x1, fuel_tank_volume: 400, engine_count: 2)
    # ...
end

def produce_spaceship(type: :freighter, size: :m, engine_count: 2)
    # ...    
end

def produce_spaceship(type = :freighter, size: :m, **custom_components)
    components = {
        engine: :standard,
        seats: :standard,
        subwoofer: :none
    }
    components.merge!(custom_components)
    # ...
end
produce_spaceship(:yacht, size: :s, engine: :rolls_royce, seats: leather)

build_params = {size: :s, engine: :rolls_royce, seats: leather}
produce_spaceship(:yacht, build_params)
custom_components = {seats = :leather}
produce_spaceship(:yacht, size: :s, **custom_components)
