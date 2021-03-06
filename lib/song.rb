class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name =name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    @@count = 0
    @@artists = []
    @@genres = []
    

    def self.count
    @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)){|value, key| key[value] +=1 } 
    end

    def self.genres
        @@genres.uniq
    
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)) { |genre, count| genre[count] += 1 ;genre }
      end



end