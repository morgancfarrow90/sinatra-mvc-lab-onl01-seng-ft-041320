require 'pry'

class PigLatinizer

  def piglatinize(word)
    consonant(word)
  	if /^[aeiou]/i.match(x)
	  "#{x}way"
  	else
  	parts = word.split(/[aeious].*/)
  	"#{parts[1]}#{parts[0]}ay"
    end
    
  end

  def consonant(word)
    word_array = word.split("")
    beginning_letter = word_array.shift
    word_array << beginning_letter
  end

  def to_pig_latin(text)
    words = text.split("")
    words.map! {|word| piglatinize(word)}
    words.join(" ")
  end

end 
