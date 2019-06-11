class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    count = 0
    artist = nil
    @@all.each do |item|
      if item.name == name
        count += 1
        artist = item
        break if count > 0
      end
    end
    if count == 0
      artist = Artist.new(name)
    end
    artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
