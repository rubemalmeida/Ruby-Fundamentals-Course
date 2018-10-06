/\d+/ =~ "Level 3" # 6
/\d+/ !~ "Level 3" # false
m = /(\d+):(\d+)/.match("Time is 12:13am") #<MatchData "12:13" 1:"12" 2:"13">
m.pre_match # "Time is "
m.post_match # "am"
m[0] # "12:13"
m[1] # "12"
m[2] # "13"

/\w+: \d+/
p "Time is 12:13am".scan(/\d+/) # ["12", "13"]
puts "Rubem Almeida".gsub(/([a-zA-Z]+) ([a-zA-Z]+)/, '\2, \1') # "Almeida, Rubem"
