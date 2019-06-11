class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    song = self.new(filename[0])
    song.genre = filename[2].chomp('.mp3')
    @artist = Artist.find_or_create_by_name(filename[1])
    @artist.add_song(song)
  end
end

