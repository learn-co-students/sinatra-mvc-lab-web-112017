class PigLatinizer
  attr_accessor :text

  def initialize(text="")
    @text = text
  end

  def piglatinize(word)
    split = word.partition(/[aeiouyAEIOUY]/)
    if split.first.length == 0
      word = word + "way"
    else
      word = split[1] + split[2] + split[0] +"ay"
    end
    word
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(' ')
  end

end
