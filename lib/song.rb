require 'pry'

# The Song class will be responsible for creating songs given each filename
# and sending the artist's name (a string) to the Artist class

class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    song = Song.new(file[1])
    song.artist_name = file[0]
    song
  end
end
