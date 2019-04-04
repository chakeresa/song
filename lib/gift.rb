class Gift
  attr_reader :name, :failure

  def initialize(name, failure)
    @name = name
    @failure = failure
  end

  def to_s
    @name
  end

  def article
    if @name[0].match(/[aeiouAEIOU]/)
      "an"
    else
      "a"
    end
  end
end
