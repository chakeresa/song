require 'minitest/autorun'
require 'minitest/pride'
require './lib/verse'

class VerseTest < Minitest::Test
  def setup
    @mockingbird_gift = Gift.new("mockingbird", "won't sing")
    @alli_gift = Gift.new("alligator", "chomps your face off")
    @verse = Verse.new(@mockingbird_gift, @alli_gift)
  end

  def test_it_exists
    assert_instance_of Verse, @verse
  end

  def test_it_inits_with_two_gifts
    assert_equal @mockingbird_gift, @verse.gift
    assert_equal @alli_gift, @verse.next_gift
  end

  def test_first_line_returns_string
    assert_equal "And if that mockingbird won't sing,", @verse.first_line
  end

  def test_last_line_returns_string
    assert_equal "Papa's gonna buy you an alligator.", @verse.last_line
  end
end
