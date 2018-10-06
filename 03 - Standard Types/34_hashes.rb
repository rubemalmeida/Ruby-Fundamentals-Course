h = {}
h = {"min" => 0, "max" => 100}
h = {min: 0, max: 100}

h = {a: "a", b: "b"} # {:a=> "a", :b=>"b"}
h[:a] # "a"
h[:a] = "z" # "z"
h # {:a=>"z", :b=>"b"}
h[:c] => "v" # "v"
h # {:a=>"z", :b=>"b", :c=>"v"}
h[:x] # nil
h = Hash.new(0) # {}
h[:a] # 0
h.each { |v| p v } # {}
h = {a: "a", b: "b"} # {:a=>"a", :b=>"b"}
h.each { |v| p v }
[:a, "a"]
[:b, "b"]
# {:a=>"a", :b=>"b"}
b.each { |k, v| puts "#{k}: #{v}" }
a: a
b: b
# {:a=>"a", :b=>"b"}
