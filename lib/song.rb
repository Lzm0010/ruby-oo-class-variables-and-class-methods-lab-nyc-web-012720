class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_info = {}
    @@genres.map{|genre| 
      if genre_info[genre]
        genre_info[genre] += 1
      else
        genre_info[genre] = 1
      end
    }
    genre_info
  end
  
  def self.artist_count
    
  end
end