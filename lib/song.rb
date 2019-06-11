class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    puts "artist = #{filename[0]}"
    puts "name = #{filename[1]}"
    puts "genre = #{filename[2]}"

  #  @artist = file.name.split(" - ")[0]
  #  @name = file.name.split(" - ")[1]
  #  @genre = file.name.split(" - ")[2].chomp('.mp3')
  end
end
