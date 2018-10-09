proc {|a, b| }.arity #=> 2
proc {|a, *b, c|}.arity #=> -3

weekend = proc {|time| time.saturday? || time.sunday?}
weekday = proc {|time| time.wday < 6}

case Time.now
when weekend then puts "Wake up at 8:00"
when weekday then puts "Wake up at 7:00"
else puts "No wake up calls outside of time"
end

def debug_only(param = nil, &block)
    puts "Param class: #{param.class}"
    puts "Block class: #{block.class}" if block_given?
end
debug_only(p) # param == p
debug_only(&p) # param == nil, block == p