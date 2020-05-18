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

  def add_song(song)
    song = Song.new(song)
    song.artist =
  end

  def songs
    Song.all
  end
end
