arr = %w[walt hank jr jessie lidia 21]

arr2 = arr[1..3]
#arr2[1] = arr2[1].capitalize
arr2[1].capitalize!

puts arr2

2.1.10 :002 > arr = %w[aa bb cc dd ee]
 => ["aa", "bb", "cc", "dd", "ee"] 
2.1.10 :003 > arr.delete_at 0
 => "aa" 
2.1.10 :004 > puts arr
bb
cc
dd
ee
 => nil 
2.1.10 :008 > arr.delete "dd"
 => "dd" 
2.1.10 :009 > puts arr
bb
cc
ee
 => nil 
