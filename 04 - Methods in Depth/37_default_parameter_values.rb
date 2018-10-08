def produce_spaceship(type = :freighter, size = :x1)
    # ...
end

def produce_spaceship(type = :freighter, size = calc_default_size(type))
    # ...
end

def produce_spaceship(type = :freighter, size = (type == :freighter ? :x1 : :m))
    # ...
end

def produce_spaceship(type = :freighter, size = :x1, engine_count)
    # ...
end

factory.produce_spaceship(4) # sets engine_count to 4
