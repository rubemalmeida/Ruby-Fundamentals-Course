[1, 2, 3].each do
    puts "This is Serenity, please respond"
end
ship = Spaceship.all
ships.each { |ship| puts ship.name }

class Spaceship
    def debug_only
        return nil unless @debug
        return nil unless block_given?
        puts "Renning debug code..."
        yield @debug_attrs
    end
end
ship.debug_only do |attrs|
    puts "Debug attr values:  #{attrs.inspect}"
end

def produce
    yield :spaceship, :freighter, :yacht, size: :s, seats: :leather
end
produce do |what = :spaceship, *types, size: :m, engine_count: 2, **custom_components|
    puts "Producing #{what}"
    print "Types: "
    p types
    puts "Size: #{size}"
    puts "Engine count: #{engine_count}"
    print "Custom components: "
    p custom_components
end
