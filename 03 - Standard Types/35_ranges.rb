(1..10).class # Range
(1..10).begin # 1
(1..10).end # 10
(1..10).include?(11) # false
(1..10).map { |v| v * 2} # [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
("aa".."ad").each { |v| puts v }
# aa
# ab
# ac
# ad
(1.0..5.0) # 1.0..5.0

puts case sample_reading
    when 0..100 then "below normal"
    when 101.150 then "normal"
    else "excessive"
    end
