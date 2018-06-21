class Song
        @@count = 0
        @@artists = []
        @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if unique_artists.include?(artist) == false
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if unique_genres.include?(genre) == false
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count
    unique_genres.group_by{ |genre| genre }.map{ |count, genre| [count, genre.size]}

  end
end
