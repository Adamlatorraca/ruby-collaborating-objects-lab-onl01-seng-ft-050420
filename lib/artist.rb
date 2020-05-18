class Artist
  attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(name)
    song = Song.new(name)
    song.artist = self

  end

  def songs
   Song.artist.all
  end
end
