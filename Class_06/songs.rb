class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

song1 = Song.new("Like a Rolling Stone", "Bob Dylan", 10)
song2 = Song.new("Imagine", "John Lennon", 10)
song3 = Song.new("What's Going On", "Marvin Gaye", 10)
song4 = Song.new("Yesterday", "The Beatles", 10)


class Playlist
	include Enumerable
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
  	@songs.each do |s| 
  		puts "yielding #{s.name}....."
  		yield s
  	end
  end

  def play_songs
  	each { |s| s.play}
  end

end

playlist = Playlist.new("Country/Western, Y'all")

playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)
playlist.add_song(song4)

playlist.each { |song| song.play }
playlist.play_songs

okie_songs = playlist.select { |song| song.name =~ /Okie/ }
p okie_songs