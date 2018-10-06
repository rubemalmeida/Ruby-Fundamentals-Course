[1, 2, 3].map {|v| v * 10} # [10, 20, 30]
[1, 2, 3].reduce(0) { |sum, v| sum + v} # 6
[3, 1, 3].sort # [1, 3, 3]
[1, 2, 3, 4, 5].select { |n| n.even? } # [2, 4]
[1, 2, 3, 4, 5].each_cons(2) { |v| p v }
# [1,2]
# [2,3]
# [3,4]
# [4,5]
# nil
