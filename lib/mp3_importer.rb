class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path)
    current_dir = Dir.getwd
    @files = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
  end

  def import
    @files.each do |file|
      song = Song.new_by_filename(file)
    end
  end
end
