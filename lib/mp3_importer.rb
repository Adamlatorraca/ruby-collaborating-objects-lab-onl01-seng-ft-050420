class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    list_of_filenames = []
    Dir.new(self.path).each do |file|
      list_of_filenames << file
    end
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
