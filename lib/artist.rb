require "pry"

class Artist
  attr_accessor :name, :genre, :song
  @@all=[]

  def initialize (name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
  binding.pry
    song = Song.new(name,self,genre)
    song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end
end
