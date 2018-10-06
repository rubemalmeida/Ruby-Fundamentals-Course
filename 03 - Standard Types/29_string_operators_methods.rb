"Hello world"[1] # "e"
"Hello world"[1,3] # "ell"
"Hello world"["or"] # "or"
a = "Hello Rubem" # "Hello Rubem"
a["Rubem"] = "Thompson" # "Thompson"
a # "Hello Thompson"
"ha " * 3 # "ha ha ha "
"%05d" % 123 # "00123"
"%.8g" % 123.123412341234 # "123.12341"
"ab" + "cd" # "abcd"

a = "~ 5\u{20ac}" # "~ 5\u20AC"
a.chars # ["~", " ", "5", "\u20AC"]
a.codepoints # [126, 32, 53, 8364]
a.bytes # [126, 32, 53, 226, 130, 172]
a = "hello" # "hello"
a.upcase! # "HELLO"
a.downcase # "hello"
a = "   this is a sentence  " # "   this is a sentence  "
a.strip!.capitalize! # "This is a sentence"
"<strong><em>Hi!</em></strong>".gsub("<","[").gsub(">","]") # "[strong][em]Hi![/em][/strong]"
"1 2 3".split # ["1", "2", "3"]
"1->2->3->".split("->") # ["1", "2", "3"]

