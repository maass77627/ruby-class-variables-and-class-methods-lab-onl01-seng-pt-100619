'require pry'

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
    @@genres << genre 
    @@artists << artist 
    @@genre_count = {}
  end 
  
  def self.count
    @@count 
  end 
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists 
   @@artists.uniq
  end 
  
  def self.genre_count 
     genres_to_return = {}
      @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        genres_to_return[genre]+= 1
      else
        genres_to_return[genre]= 1      
    end
    end
    genres_to_return 
  end

      
  
end 
    