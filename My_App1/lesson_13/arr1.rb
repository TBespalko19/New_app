2.1.10 :008 > arr = [99, 55, 33, 45]
 => [99, 55, 33, 45] 
2.1.10 :009 > puts arr.inspect
[99, 55, 33, 45]
 => nil 
2.1.10 :010 > puts arr
99
55
33
45
 => nil 

 2.1.10 :015 > hh = {'cat' => 5, 'dog' => 3, 'girl' => 65}
 => {"cat"=>5, "dog"=>3, "girl"=>65} 
2.1.10 :016 > puts hh
{"cat"=>5, "dog"=>3, "girl"=>65}
 => nil 
2.1.10 :017 > puts hh.keys
cat
dog
girl
 => nil 
2.1.10 :018 > puts hh.keys.inspect
["cat", "dog", "girl"]
 => nil 
 

 2.1.10 :001 > a = 60
 => 60 
2.1.10 :002 > b = 80
 => 80 
2.1.10 :003 > puts 'OK' if a + b > 100
OK
 => nil 
2.1.10 :004 > puts 'OK' if true
OK
 => nil 
2.1.10 :005 > puts 'OK' if false
 => nil 
2.1.10 :006 > puts 'OK' if a + b > 1000
 => nil 