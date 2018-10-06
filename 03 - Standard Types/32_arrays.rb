[1, 2, 3]
[1, "Z", Object.new]

arr = [] # []
arr = Array.new(3) # [nil, nil, nil]
arr = Array.new(3, true) # [true, true, true]
arr = Array.new(3, "abc") # ["abc", "abc", "abc"]
arr.first.upcase! # "ABC"
arr # ["ABC", "ABC", "ABC"]
arr = Array.new(3) { "abc" } # ["abc", "abc", "abc"]
arr.last.upcase! # "ABC"
arr # ["abc", "abc", "ABC"]
arr = Array.new(3) { Array.new(3) } # [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
%w(array of words) # ["array", "of", "words"]
%w(array\ of words) # ["array of", "words"]
%W(1\tarray of #{2+2} words) # ["1\tarray", "of", "4", "words"]
arr = %i(up down left right) # [:up, :down, :left, :right]
arr.size # 4
arr.empty? # false
arr[1] # :down
arr # [:up, :down, :left, :right]
arr[-1] # :right
arr[-2] # :left
arr = [1, 2, 3, 4, 5] # [1, 2, 3, 4, 5]
arr[1..3] # [2, 3, 4]
arr[1..-2] # [2, 3, 4] 
arr[-4..4] # [2, 3, 4, 5]
arr[1] = "string value" # "string value"
arr # [1, "string value", 3, 4, 5]
arr[2..3] = [:east, :west] # [:east, :west]
arr # [1, "string value", :east, west, 5]
arr << 10 # [1, "string value", :east, west, 5, 10]
[1, 2] + [3, 4] # [1, 2, 3, 4]
[1, 2] * 3 # [1, 2, 1, 2, 1, 2]
[1, 2] * "," # "1,2"
[1, 2, 3, 2, 5] - [2, 5] # [1, 3]
