class PigLatinizer

  def initialize
    # @string = string.downcase
  end

  def piglatinize(string)
    vowels = ["a","e","i","o","u"]
    letters = string.split('')
    if letters.length == 1 && vowels.include?(letters.first.downcase)
      letters << ["w","a","y"]
      letters.join
    elsif vowels.include?(letters.first.downcase)
      letters << ["w","a","y"]
      letters.join
    else
      first_i = letters.find_index {|l| vowels.include?(l.downcase)}
      letters = letters[first_i..letters.length] << letters[0..first_i - 1]
      letters << ["a", "y"]
      letters.join('')
    end
  end

  def to_pig_latin(text)
    text.split(' ').map {|w| piglatinize(w)}.join(' ')
  end

end
