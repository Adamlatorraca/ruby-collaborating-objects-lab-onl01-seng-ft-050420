class MP3Importer
  attr_accessor

  def initialize(path)
    @path = path
  end

  def files(list_of_filenames)
    Dir.new('.').each {|file| puts file }
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end
