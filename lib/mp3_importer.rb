class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")
    @files.collect do |file|
    #  file.sub("./spec/fixtures/mp3s", "")
      puts file
    end
    @files.flatten
  end

  def import
  end
end
