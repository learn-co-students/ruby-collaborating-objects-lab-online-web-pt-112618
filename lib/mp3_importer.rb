

class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
 Dir.glob("#{@path}/*.mp3").select { |fn| File.file?(fn)}.map{ |f| File.basename f }
   



end
  
  def import
files 
  files.each{|file| Song.new_by_filename(file)}
end
end
