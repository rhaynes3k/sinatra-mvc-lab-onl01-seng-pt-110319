class PigLatinizer
  attr_accessor :word

  def initialize
      word
    #binding.pry

  end

  def piglatinize(words)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    word = words.downcase
    if vowels.include?(word[0])
      if words[0] == words[0].capitalize
        words + 'way'
      else
        word + 'way'
        #binding.pry

      end
    # elsif vowels.include?(word[0]) && word.length <= 1
    #   word[0].capitalize + 'way'

    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
      #binding.pry

    else
      word.capitalize # return unchanged

    end
  end

end
