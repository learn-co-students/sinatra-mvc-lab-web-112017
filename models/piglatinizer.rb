class PigLatinizer

  def piglatinize(text)
    a = text.split(" ")
    a.map do |word|
      if word.downcase.start_with?("a", "e", "i", "o", "u")
        word << "way"
      else
        while !word.downcase.start_with?("a", "e", "i", "o", "u")
          word << word[0]
          word = word[1..word.length]
        end
        word << "ay"
      end
    end.join(" ")
  end

  def to_pig_latin(text)
    piglatinize(text)
  end

end
