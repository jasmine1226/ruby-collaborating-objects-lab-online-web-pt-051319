class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    song = self.new(filename[1])
    song.genre = filename[2].chomp('.mp3')
    song.artist = Artist.find_or_create_by_name(filename[0])
    song.artist.add_song(song)
    song
  end
end
