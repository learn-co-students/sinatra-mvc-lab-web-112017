class PigLatinizer

  def to_pig_latin(words)  
    words.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(word)
    if ["a","e","i","o","u"].include?(word[0].downcase)
      word << "w"
    else
      while !["a","e","i","o","u"].include?(word[0].downcase)
       word << word[0]
       word = word[1...word.length]
      end
    end
    word << "ay"
  end

end
