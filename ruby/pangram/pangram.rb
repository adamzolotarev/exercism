# Learning Ruby
class Pangram
  ALPHABET = ('a'..'z')

  def self.is_pangram?(str)
    downcased = str.downcase
    ALPHABET.all? {|char| downcased.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
