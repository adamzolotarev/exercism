# Learning Ruby
class Pangram
  @alphabet = 'abcdefghigklmnopqrstuvwxyz'

  def self.is_pangram?(str)
    downcased = str.downcase
    @alphabet.chars.all? {|char| downcased.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
