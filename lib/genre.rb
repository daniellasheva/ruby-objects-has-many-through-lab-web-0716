class Genre

  attr_reader :name, :songs, :artists

  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    songs<<song
  end

  def artists #looks through songs to collect the artist
    songs.collect {|song| song.artist}
  end
end 