require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

# parses the filenames
  def files
    Dir["#{@path}/**/*.mp3"].collect do |file|
      File.basename(file)
    end.sort
  end

# sends the files to the Song class
  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end
