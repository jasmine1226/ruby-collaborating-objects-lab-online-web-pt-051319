class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    name.save
  end

  def add_song
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      Artist.name
    else
      Artist.new(name)
    end
  end
end
