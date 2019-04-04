require 'minitest/autorun'
require 'minitest/pride'
require './lib/song'

class SongTest < Minitest::Test
  def setup
    @song = Song.new
  end

  def test_it_exists
    assert_instance_of Song, @song
  end

  def test_lyrics_returns_a_string
    expected = "Hush little baby, don't say a word,\nPapa's gonna buy you a mockingbird.\n\nAnd if that mockingbird won't sing,\nPapa's gonna buy you a diamond ring.\n\nAnd if that diamond ring turns to brass,\nPapa's gonna buy you a looking glass.\n\nAnd if that looking glass gets broke,\nPapa's gonna buy you a billy goat.\n\nAnd if that billy goat won't pull,\nPapa's gonna buy you a cart and bull.\n\nAnd if that cart and bull turn over,\nPapa's gonna buy you a dog named Rover.\n\nAnd if that dog named Rover won't bark,\nPapa's gonna buy you a horse and cart.\n\nAnd if that horse and cart fall down,\nYou'll still be the sweetest little baby in town!"
    assert_equal expected, @song.lyrics
  end
end
