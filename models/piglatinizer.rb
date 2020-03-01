class PigLatinizer
  attr_accessor :words

  def initialize

  end

  def piglatinize(words)
    #binding.pry
    alpha_l = ('a'..'z').to_a
    alpha_c = ('a'..'z').map{|l|l.capitalize}.to_a
    alpha_all = alpha_l + alpha_c
    vowels = %w[a e i o u A E I O U]
    consonants = alpha_all - vowels
    all_words = words.split(", ")
    all_words.each do |w|
      if vowels.include?(w[0])
        w + 'way'
      else
        back = []
        w.split("").each do |l|
          break if vowels.include?(l)
          if consonants.include?(l)
            back << l
          end
        end
        fnt = w[back.count..-1]
        new_dword = fnt.split.concat(back).join() + 'ay'
        binding.pry

      end
      fin = []
      fin << new_word
      #binding.pry

    end

  end

end
