class PigLatinizer
  attr_reader :words

  # def initialize(words)
  #     @words = words
  # end

  def piglatinize(words)

    alpha_l = ('a'..'z').to_a
    alpha_c = ('a'..'z').map{|l|l.capitalize}.to_a
    alpha_all = alpha_l + alpha_c
    vowels = %w[a e i o u A E I O U]
    consonants = alpha_all - vowels
    if vowels.include?(words[0])
        words + 'way'
    else
      back = []
      words.split("").each do |l|
        break if vowels.include?(l)
        if consonants.include?(l)
          back << l
        end
      end
      fnt = words[back.count..-1]
      new_word = fnt.split.concat(back).join() + 'ay'
    end
  end

end
