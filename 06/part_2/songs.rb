require_relative 'my_enumerable'
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
	# include Enumerable
   include MyEnumerable
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

imagine_songs = playlist.my_select { |song| song.name =~ /Imagine/ }
p imagine_songs

songs_label = playlist.my_map { |s| "#{s.name} - #{s.artist}"}
p songs_label

non_imagine_songs = playlist.my_reject { |song| song.name =~ /Okie/ }
p non_imagine_songs

p playlist.my_detect { |song| song.artist == "Marvin Gaye" }

p playlist.my_any? { |song| song.artist == "Bob Dylan" }

total_duration = playlist.my_reduce(0) { |sum, song| sum + song.duration }
p total_duration