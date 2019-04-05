require './lib/gift'

class Verse
  attr_reader :gift, :next_gift

  def initialize(gift, next_gift)
    @gift = gift
    @next_gift = next_gift
  end

  def first_line
    "And if that #{@gift} #{@gift.failure},"
  end

  def last_line
    "Papa's gonna buy you #{@next_gift.article} #{@next_gift}."
  end
end
