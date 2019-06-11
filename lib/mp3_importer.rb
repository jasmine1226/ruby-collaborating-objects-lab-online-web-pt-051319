class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")

    puts "#{file}"
    file
  end

  def import
  end
end
