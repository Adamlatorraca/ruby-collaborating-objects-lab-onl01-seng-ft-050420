class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    list_of_filenames = []
    Dir.new(self.path).each do |file|
        list_of_filenames << file if file.length > 4
      end
    list_of_filenames
  end

  def import
    self.list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
