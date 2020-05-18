class MP3Importer
  attr_accessor :path

  filenames = []

  def initialize(path)
    @path = path
  end

  def files
    Dir.new(self.path).each do |file|
        filenames << file if file.length > 4
      end
    filenames
  end

  def import
    filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
