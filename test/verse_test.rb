require 'minitest/autorun'
require 'minitest/pride'
require './lib/verse'

class VerseTest < Minitest::Test
  def setup
    @mockingbird_gift = Gift.new("mockingbird", "won't sing")
    @verse = Verse.new(@mockingbird_gift)
  end

  def test_it_exists
    assert_instance_of Verse, @verse
  end

  def test_it_inits_with_two_gifts
    assert_equal @mockingbird_gift, @verse.gift
  end

  def test_lyrics_returns_string
    assert_equal "Papa's gonna buy you a mockingbird.\n\nAnd if that mockingbird won't sing,\n", @verse.lyrics
  end
end
