class PigLatinizer
  def piglatinize(word)
    #Starts with constant?
    if word.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).any? {|letter| word.start_with?(letter)}
      word.chars.each_with_index do |letter, i| #Go through each letter till vowel is found
        case letter
        when "a", "e", "i", "o", "u"
          return "#{word[i..-1]}#{word[0..i-1]}ay" #every letter before with ay
        end
      end
    end

    #starts with vowel?
    if word.scan(/[aeiouAEIOU]/).any? {|letter| word.start_with?(letter)}
      return "#{word}way"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end







end
