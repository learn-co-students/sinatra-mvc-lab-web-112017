class PigLatinizer


    attr_accessor  :latinize
    attr_reader :vowels

    def piglatinize(word)
      # word starts with vowel
      if !consonant?(word[0])
        word = word + "w"
      # word starts with 3 consonants
      elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
        word = word.slice(3..-1) + word.slice(0,3)
      # word starts with 2 consonants
      elsif consonant?(word[0]) && consonant?(word[1])
        word = word.slice(2..-1) + word.slice(0,2)
      # word starts with 1 consonant
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << "ay"
    end

    def consonant?(char)
      !char.match(/[aAeEiIoOuU]/)
    end

    def to_pig_latin(sentence)
      sentence.split.collect { |word| piglatinize(word) }.join(" ")
    end



    # def piglatinize(word)
    #   return word + "ay" if @vowels.include?(word[0].downcase)
    #   handle_capitals(word)
    # end
    #
    # def capital?(word)
    #   word[0] != word[0].downcase
    # end
    #
    # def latinize_word(word)
    #   word[1..-1] + word[0] + "ay"
    # end
    #
    # def handle_capitals(word)
    #   return latinize_word(word).capitalize if capital?(word)
    #   latinize_word(word)
    # end

end
