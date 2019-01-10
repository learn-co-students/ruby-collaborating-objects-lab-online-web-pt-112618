class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      artist.name == name
    end or Artist.new(name)
  end


  def initialize(name)
    @name = name
    @songs = []
    @@all.push(self)
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end

  def save
    @@all.push(self)
  end

end
