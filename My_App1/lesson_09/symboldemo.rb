puts "aaa" == "aaa" # 1 случай
puts :aaa == :aaa # 2 случай
puts "aaa".equal? "aaa" # 3 случай
puts :aaa.equal? :aaa # 4 случай

true
true
false
true


tania@TBespalko:~$ irb
2.1.10 :001 > "aaa".object_id
 => 12819020 
2.1.10 :002 > "aaa".object_id
 => 12793360 
2.1.10 :003 > :aaa.object_id
 => 557608 
2.1.10 :004 > :aaa.object_id
 => 557608 
