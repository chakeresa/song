require './lib/gift'

class Verse
  attr_reader :gift

  def initialize(gift)
    @gift = gift
  end

  def lyrics
    "Papa's gonna buy you #{@gift.article} #{@gift}.\n\nAnd if that #{@gift} #{@gift.failure},\n"
  end
end
