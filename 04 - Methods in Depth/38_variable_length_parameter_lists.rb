def produce_fleet(days_to_complete, *types)
    # ...
end
produce_fleet(10, :freighter, :freighter, :explorer)

def produce_fleet(days_to_complete = 10, *types)
    # ...
end
produce_fleet(15, :freighter, :freighter, :explorer)
produce_fleet(:freighter, :freighter, :explorer)

ship_types = [:freighter, :freighter, :explorer]
produce_fleet(15, *ship_types)
produce_fleet(15, :freighter, :freighter, :explorer)
