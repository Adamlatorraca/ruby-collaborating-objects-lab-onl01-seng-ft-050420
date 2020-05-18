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
    file.each do |name|
      self.name = file[1]
      self.artist = file[0]
      end
    @@all << self.name.artist
  end
end
