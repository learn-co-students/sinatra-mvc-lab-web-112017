class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize (word)
    @alpha = ('a'..'z').to_a
    @vowels = ['a','e','i','o','u']
    @consonants = @alpha - @vowels

   if @vowels.include?(word[0])
      word + 'way'
    elsif @consonants.include?(word[0].downcase) && @consonants.include?(word[1].downcase) && @consonants.include?(word[2].downcase)
      word[3..-1] + word[0..2] + 'ay'
    elsif @consonants.include?(word[0].downcase) && @consonants.include?(word[1].downcase)
      word[2..-1] + word[0..1] + 'ay'
    elsif @consonants.include?(word[0].downcase)
      word[1..-1] + word[0] + 'ay'
    else
      word + "way"
    end
  end

  def to_pig_latin(sentence)
    sentence = sentence.split(' ')

    sentence.map { |w| piglatinize(w) }.join(' ')
  end
end
