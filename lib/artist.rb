class Artist
  attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song = Song.new(title)
    song.artist = self
    @@all << self
  end

  def songs
   Song.artist.all
  end
end
