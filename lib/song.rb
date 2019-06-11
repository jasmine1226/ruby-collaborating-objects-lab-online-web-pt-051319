class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    puts "artist = #{filename[0]}"
    puts "name = #{filename[1]}"
    song = self.new(filename[1])
    song.genre = filename[2].chomp('.mp3')
    @artist = Artist.find_or_create_by_name(filename[0])
#    puts @artist.name

#    @artist.add_song(song)
    song
  end
end
