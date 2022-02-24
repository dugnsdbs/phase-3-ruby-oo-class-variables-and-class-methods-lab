require"pry"
class Song 

  @@count = 0
  @@genres = []
  @@artist =[]

  attr_accessor :name, :artist, :genre
  def initialize(name,artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << self
    @@artist << self
  end


  def self.count 
    @@count
  end

  def self.artists
    @@artist.map {|singer|singer.artist }.uniq
  end

  def self.genres
    @@genres.map {|song|song.genre }.uniq
  end

  def self.genres_count
    @@genres.map {|song|song.genre}.tally

  end

  def self.artist_count
    @@artist.map {|singer|singer.artist}.tally
  end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_eight_problems = Song.new("98 Problems", "Jay-Y", "ballad")
ninety_seven_problems = Song.new("97 Problems", "Jay-Z", "dance")
ninety_six_problems = Song.new("96 Problems", "Jay-A", "rap")
ninety_five_problems = Song.new("95 Problems", "Jay-B", "dance")
puts ninety_nine_problems.name
puts ninety_nine_problems.artist
puts ninety_nine_problems.genre

puts Song.count
puts Song.genres
puts Song.artists
puts Song.genres_count
puts Song.artist_count