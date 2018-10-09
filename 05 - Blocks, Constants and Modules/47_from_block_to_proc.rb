def debug_only(param = nil, &block)
    puts "Param class: #{param.class}"
    puts "Block class: #{block.class}" if block_given?
end

debug_only {}
puts "---"
p = Proc.new {|bla| puts "I'm a proc that says #{bla}!"}

debug_only(p)
puts "---"
debug_only(&p)


p = Proc.new {|bla| puts "I'm a proc that say #{bla}!"}
p = proc {|bla| puts "I'm a proc that say #{bla}!"}
p.call "yay!"
p.yield "wow!"
p.("nothing")
p["hello"]
