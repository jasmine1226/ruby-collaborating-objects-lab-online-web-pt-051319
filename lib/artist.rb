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

  def save
    @@all << self
  end

  def self.all? { ||  }

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      Artist.name
    else
      Artist.new(name)
    end
  end

  def print_songs
    puts @songs
  end
end
