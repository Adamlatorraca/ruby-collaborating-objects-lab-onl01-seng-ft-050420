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
    file = filename.chomp(".mp3").split(" - ")
    binding.pry
    song = song.new(file[1])
    song.artist_name = file[0]
    song
  end
end
