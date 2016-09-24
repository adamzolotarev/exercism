# Exercism Hamming exercise
class Hamming
  def self.compute(first_segment, second_segment)
    if first_segment.length != second_segment.length
      raise ArgumentError
    end
    diffs = 0;
    for i in 0..first_segment.length
      if first_segment[i] != second_segment[i]
        diffs += 1
      end
    end
    diffs
  end
end
