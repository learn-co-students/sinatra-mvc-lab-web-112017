class PigLatinizer

  def piglatinize (word)
    @alpha = ('a'..'z').to_a
    @alphacap = ('A'..'Z').to_a
    @alpha = @alpha + @alphacap
    @vowels = ['a','e','i','o','u']
    @vowelscap = ['A','E','I','O','U']
    @vowels = @vowels + @vowelscap
    @consonants = @alpha - @vowels

    if @vowels.include?(word[0])
      word + 'way'
    elsif @consonants.include?(word[0]) && @consonants.include?(word[1]) && @consonants.include?(word[2])
      word[3..-1] + word [0..2] + "ay"
    elsif @consonants.include?(word[0]) && @consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif @consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word + "way"
    end
  end


    def to_pig_latin(string)
      words = string.split(' ')
      @alpha = ('a'..'z').to_a
      @alphacap = ('A'..'Z').to_a
      @alpha = @alpha + @alphacap
      @vowels = ['a','e','i','o','u']
      @vowelscap = ['A','E','I','O','U']
      @vowels = @vowels + @vowelscap
      @consonants = @alpha - @vowels

      words.map! do | word |
        if @vowels.include?(word[0])
          word + 'way'
        elsif @consonants.include?(word[0]) && @consonants.include?(word[1]) && @consonants.include?(word[2])
          word[3..-1] + word [0..2] + "ay"
        elsif @consonants.include?(word[0]) && @consonants.include?(word[1])
          word[2..-1] + word[0..1] + 'ay'
        elsif @consonants.include?(word[0])
          word[1..-1] + word[0] + 'ay'
        else
          word + "way"
        end
      end
      words.join(" ")
    end


end
