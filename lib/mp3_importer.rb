require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def files
  #binding.pry
  Dir.glob("#{@path}/*.mp3").map{|file| file.gsub("#{@path}/", "")}
   #Im an idiot... I looked at the solution for gsub...@path is the ./spec/fixture etc so when I called Dir.glob it gave me all of the filenames including mp3 so
  end

  def import
    #binding.pry
    files.each {|file| file = Song.new_by_filename}
  end

end
#g sub method
#Dir.glob
