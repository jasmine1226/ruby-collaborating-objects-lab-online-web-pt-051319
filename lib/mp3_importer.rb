class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    current_dir = Dir.getwd
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    @files
  end

  def import
    song.files.each do |file|
      song = Song.new_by_filename(file)
    end
  end
end
