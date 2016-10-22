class Phrase
  attr_reader :word_count
  
  def initialize(words)
    @word_count = words.downcase
                       .scan(/\w+'\w+|\w+/)
                       .reduce(Hash.new(0)) { |a, e| a.update(e => a[e] + 1) }
  end
end

module BookKeeping
  VERSION = 1
end
