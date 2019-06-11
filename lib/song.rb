class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    song = self.new(filename[1])
    song.genre = filename[2].chomp('.mp3')
    @artist = Artist.find_or_create_by_name(filename[0])

  #  @artist = file.name.split(" - ")[0]
  #  @name = file.name.split(" - ")[1]
  #  @genre = file.name.split(" - ")[2].chomp('.mp3')
  end
end
