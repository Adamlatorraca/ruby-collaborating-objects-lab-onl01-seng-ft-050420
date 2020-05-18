require "pry"

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
  artist_name, song_name, extra = filename.split(" - ")
  song = self.new(song_name)
  artist = Artist.find_or_create_by_name(artist_name)
  artist.add_song(song)
  end

  def artist=(name)
    self.artist = Artist.find_or_create_by_name(nam3)
    artist.add_song
  end
end
