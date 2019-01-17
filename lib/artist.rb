require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all
  end

  def add_song(song)
    #binding.pry
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    #find artist by name(why do I need to use all?)  ||
    self.all.find {|artist| artist.name == name} || name = self.new(name)
    #create artist by name
  end

  def print_songs
    #binding.pry
    @songs.each {|song| puts song.name}
  end

end
