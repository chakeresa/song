require './lib/verse'
require './lib/gift'

class Song
  DATA = [
    ["mockingbird", "won't sing"],
    ["diamond ring", "turns to brass"],
    ["looking glass", "gets broke"],
    ["billy goat", "won't pull"],
    ["cart and bull", "turn over"],
    ["dog named Rover", "won't bark"],
    ["horse and cart", "fall down"]
  ]

  def initialize(data = DATA)
    @gifts = data.map do |gift_data|
      Gift.new(gift_data[0], gift_data[1])
    end
  end

  def lyrics
    return_string = first_line
    @gifts.each do |gift|
      return_string += Verse.new(gift).lyrics
    end
    return_string += last_line
  end

  def first_line
    "Hush little baby, don't say a word,\n"
  end

  def last_line
    "You'll still be the sweetest little baby in town!"
  end
end
