# Learning Ruby
class Pangram
  @alphabet = ('a'..'z')

  def self.is_pangram?(str)
    downcased = str.downcase
    @alphabet.all? {|char| downcased.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
