class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")
  end

  def import
    @files.each do |file|
      song = Song.new_by_filename(filename)
    end
  end
end
