class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
    #path = './spec/fixtures/mp3s'
  end
  
  def files 
    Dir.chdir(@path) {|path| Dir.glob("*.mp3*")}
    #change directry and remove mp3 frim file name
  end 
  
  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end   
  end
  
end 