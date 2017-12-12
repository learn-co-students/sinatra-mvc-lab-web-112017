require 'pry'
class PigLatinizer

attr_accessor :text
#
# def initialize
#
# end

def piglatinize(word)
 str = word
 alpha = ('a'..'z').to_a + ('A'..'Z').to_a
 vowels = %w[a e i o u A E I O U]
 consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'way'

  elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
    str[3..-1] + str[0..2] + 'ay'

  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'

  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
  str # return unchanged
end
end


def to_pig_latin(sentence)
  sentence.split.map do |word|
    piglatinize(word)
  end.join(" ")
end



end

# answer = piglatinize("I")
# binding.pry
# pork = PigLatinizer.new
# pork.text = "pork"
# answer = pork.piglatinize
# this = PigLatinizer.new
# this.text = "this"
# answer2 = this.piglatinize
# # text_test = PigLatinizer.new
# # text_test.text = "pork apple cherry"
# # answer2 = text_test.to_pig_latin
#
# binding.pry
