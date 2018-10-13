require 'sqlite3'

db = SQLite3::Database.new 'test.db'

db.execute "SELECT * FROM Cars1" do |car|
	puts car
	puts "===="
end

db.close