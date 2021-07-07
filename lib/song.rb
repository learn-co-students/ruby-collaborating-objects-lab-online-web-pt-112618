require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  #def artist=(name)  #helper method to associate new song with artist #sets the artist object to belong to a song
    #binding.pry
    #@artist = name #setter
    #new_artist = Artist.new(name)
  #end

  def self.new_by_filename(file_name)#creates a instance/object by file_name imported from MP3 class
    song_name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]

    song = self.new(song_name)
    song.artist_name=(artist_name)
    song
  end
=begin
  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist #stores the Artist object
    # @artist == <Artist #12368712368173>
  end
=end
  def artist_name=(name)
    #binding.pry
    self.artist = Artist.find_or_create_by_name(name)
#returning @artist, which is an Artist object
#then we're calling .add_song on that artist
#self is a Song, since we're inside of an instance method
    artist.add_song(self)
  end


end
