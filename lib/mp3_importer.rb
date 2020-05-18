require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filenames = []
    Dir.new(self.path).each do |file|
        filenames << file if file.length > 4
      end
    filenames
  end

  def import
    binding.pry
    self.filenames.each{ |file| Song.new_by_filename(filename) }
  end
end
