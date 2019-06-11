class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    @artist = file.name.split(" - ")[0]
    @name = file.name.split(" - ")[1]
    @genre = file.name.split(" - ")[2].chomp('.mp3')
  end
end
