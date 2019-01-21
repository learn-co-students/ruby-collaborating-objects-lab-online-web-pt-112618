class Artist
  attr_accessor :name

#  @@artists = []
 @@songs = []
  def initialize(name)
   # @@songs = []
    @name = name
  @@artists = []
  @@songs = []
  end
  
  def add_song(song)
    
    song.artist = self 
   @@songs << song
  end
 def self.find_or_create_by_name (name)
 ind=@@artists.index {|x| x.name==name}
if ind==nil
  a=Artist.new(name)
  @@artists << a
@@songs<<self
    return a
else
  return @@artists[ind]
  @@songs<<self
end



 end
def songs
    @@songs
  end
  
  def print_songs
    @@songs.each do |s|
      puts "#{s.name}"
    end
  end
 # def add_song_by_name(name)
  #  a=Song.new(name)
 #   add_song(a)
#  end
  
  def save
self.class.all << self
#songs=[]
#self.all<<self
 end
  
 def self.all
 @@artists
     
  end
  def self.song_count
    @@songs.count
  end
end