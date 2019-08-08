class Phrase
  attr_reader :word_count

  def initialize(words)
    @word_count = words.downcase
                       .scan(/\w+'\w+|\w+/)
                       .each_with_object(Hash.new(0)) do |element, hash|
                         hash[element] += 1
                       end
  end
end
module BookKeeping
  VERSION = 1
end
