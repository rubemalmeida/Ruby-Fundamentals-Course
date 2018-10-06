#!/usr/bin/ruby
# encoding: us-ascii
puts "abc".encoding

'Sereinty' # Serenity
'\'Serenity\'' # 'Serenity'
'Backslash: \\' # Backslash: \
%q('Serenity' transport) # 'Serenity' transport
%q['Serenity' transport] # 'Serenity' transport
%q{'Serenity' transport} # 'Serenity' transport
%q<'Serenity' transport> # 'Serenity' transport
%q*'Serenity' transport* # 'Serenity' transport
%q/'Serenity' transport/ # 'Serenity' transport

\n # newline
\t # tab
\'' # double quote
\100 # @
\x40 # @

lander_count = 10
probe_count = 20
puts "Lander count: #{lander_count}"
puts "Total units: #{lander_count + probe_count}"

"abc" "def" # "abcdef"
"hello
    world" # "hello\n    world"

message = <<EOS
    There's no place I can be
    since I found serenity
EOS

message = <<-EOS
          There's no place I can be
          since I found serenity
          EOS
