4.upto(20) { |x| puts x }
-5.upto(5) { |x| puts x }
50.downto(-50) { |x| puts x }
"huan antonio".split().map(&:capitalize).join(" ")

irb
2.1.7 :005 > puts "\\"
\
 => nil 
2.1.7 :006 > puts "\\n"
\n
 => nil 
2.1.7 :007 > puts "\\r"
\r
 => nil


 2.1.7 :016 > str="/-|\\|"
 => "/-|\\|" 
2.1.7 :017 > 100000.times{str.size.times{|x| puts str[x]}}
