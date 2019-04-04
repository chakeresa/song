require 'minitest/autorun'
require 'minitest/pride'
require './lib/gift'

class GiftTest < Minitest::Test
  def setup
    @mockingbird_gift = Gift.new("mockingbird", "won't sing")
    @alli_gift = Gift.new("alligator", "chomps your face off")
  end

  def test_it_exists
    assert_instance_of Gift, @mockingbird_gift
  end

  def test_it_inits_with_name_and_failure
    assert_equal "mockingbird", @mockingbird_gift.name
    assert_equal "won't sing", @mockingbird_gift.failure
  end

  def test_to_s_returns_name
    assert_equal "mockingbird", @mockingbird_gift.to_s
  end

  def test_article_returns_a_or_an_depending_on_vowel_start
    assert_equal "a", @mockingbird_gift.article
    assert_equal "an", @alli_gift.article
  end
end
