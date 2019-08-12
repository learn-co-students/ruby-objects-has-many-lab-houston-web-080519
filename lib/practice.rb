class Artist 

    @songs = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
    end

    def add_song(song) 
        @songs << song
        song.artist.name = self
    end        

    # def self.song_count
    #     self.
    # end




end


