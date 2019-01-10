class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create_by_name(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
     @songs << song
  end
end
