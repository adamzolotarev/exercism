class Phrase
  def initialize(words)
    @word_count = words.gsub(/[^a-zA-Z|'| |\n|,|\w]/, '')
                       .tr(',', ' ')
                       .downcase
                       .split
                       .map { |w| w.chomp("'").reverse.chomp("'").reverse }
                       .reduce(Hash.new(0)) { |a, e| a.update(e => a[e] + 1) }
  end

  attr_reader :word_count
end

module BookKeeping
  VERSION = 1
end
