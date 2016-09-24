# Exercism Hamming exercise
class Hamming
  def self.compute(first_segment, second_segment)
    raise ArgumentError unless first_segment.length == second_segment.length
    first_chars = first_segment.chars
    second_chars = second_segment.chars
    first_chars.zip(second_chars).count { |l, r| l != r }
  end
end
