class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    song_count = 0
    @@artists.each {|artist| song_count += artist.songs.count}
    song_count
  end

end
