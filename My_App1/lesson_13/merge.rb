def show_book book
	# Выводит на екран записную книгу
	puts "==================================================<br/>"
	book.keys.each do |key|
		age = book[key]
		puts "Name: <i>#{key}</i>, age: <b>#{age}</b><br/>"
	end
	puts "==================================================<br/>"
end


book1 = { 'Mike' => 65, 'lidia' => 42, 'Tania' => 30 }
#show_book book1

book2 = { 'Walt' => 50, 'Jessie' => 55, 'Anna' => 29}
#show_book book2

#book = book1.merge book2
book1.merge! book2

puts"<body>"
show_book book1
