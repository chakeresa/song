require 'minitest/autorun'
require 'minitest/pride'
require './lib/verse'

class VerseTest < Minitest::Test
  def setup
    @verse = Verse.new
  end

  def test_it_exists
    assert_instance_of Verse, @verse
  end
end
