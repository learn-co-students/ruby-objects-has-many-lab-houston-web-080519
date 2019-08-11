class Artist
  
  attr_accessor :name, :songs

 
  def initialize(name)
    @name = name
    @@songs = Array.new
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
    # @songs
  end
  
  def add_song(song)
    song.artist = self
    @@songs << song
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@songs << song
  end
  
  def self.song_count
   return Song.all.count
  end
  
  def name
    @name
  end  
  
end

# drake = Artist.new("Drake")
# drake = add_song_by_name("hotline butts")
# drake.song_count