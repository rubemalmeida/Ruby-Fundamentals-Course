a, b = 1, 2 # a == 1, b == 2
a = 1, 2, 3, 4 # a == [1, 2, 3, 4]

def get_values
    [1, 2, 3, 4]
end
a, b = get_values # a == 1, b == 2
a, *b = get_values # a == 1, b == [2, 3, 4]
a, *b, c = get_values # a == 1, b == [2, 3], c == 4

r = (0..10) # 0..10
[1, 2, *r] # [1, 2, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class Probe
    def self.next_probe_id
        @next_probe_id ||= 0
        @next_probe_id += 1
    end

    def initialize(size)
        @name = "Probe #{Probe.next_probe_id}"
        @type = :regular
        @size = size
    end

    def to_a
        instance_variables.map { |v| instance_variable_get(v) }
    end 
end

{*Probe.new(:large)}
