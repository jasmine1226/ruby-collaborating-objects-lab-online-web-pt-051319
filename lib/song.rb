class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    @artist = file.name.split(" - ")[0]

  end
end
