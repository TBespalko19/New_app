class Artist
	attr_accessor :name, :album

	def initialize name
		@name = name
		@albums = []
		@artist = []
	end

	def add_album album
		@artist << album
	end
end

class Album
	attr_reader :name, :songs

	def initialize name
		@name = name
		@songs = []
	end

	def add_song song
		songs << song
	end
end

class Song
	#name, #duration
	attr_reader :name, :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end
end

artist = Artist.new 'Queen'

album1 = Album.new 'Innuendo'
album2 = Album.new 'Innuendo1'

song1 = Song.new 'The show must go on', 6
song2 = Song.new 'Ride the wild wind', 4
song3 = Song.new 'Innuendo', 6

album1.add_song song1
album1.add_song song2
album1.add_song song3

puts album1.songs[1].name

artist.add_album album1
artist.add_album album2

puts artist.add_album album2.name
