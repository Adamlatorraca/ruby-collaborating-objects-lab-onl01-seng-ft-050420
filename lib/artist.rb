class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if name == nil
      artist = Artist.new(name)
    else
      self.songs.each do |song|
        song.name
      end
    end
  end
end
