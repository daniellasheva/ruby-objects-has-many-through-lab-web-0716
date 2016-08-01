class Song

  attr_reader :title, :genre
  attr_accessor :artist

  def initialize (title, genre)
    @title=title
    @genre=genre
    @artist=artist
    @genre.add_song(self)
  end
end