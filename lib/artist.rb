class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    artist.all
  end

  def add_song
    song.artist = self
  end


end
