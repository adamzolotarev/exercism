class Anagram

  def initialize(word)
    @original_word = word.downcase
    @word = @original_word.chars.sort.join.downcase
  end

  def match(words)
    words.select { |w| anagram?(w) }
  end

  private

  def anagram?(candidate)
    downcased = candidate.downcase
    return false if downcased == @original_word
    @word == downcased.chars.sort.join
  end
end

module BookKeeping
  VERSION = 2
end
