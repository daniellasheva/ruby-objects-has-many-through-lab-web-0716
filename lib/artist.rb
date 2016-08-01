# require_relative './songs.rb'
# require_relative './genre.rb'

class Artist

  attr_reader:name, :songs, :genres

  def initialize (name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    @songs<<song
    song.artist=self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end