class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    result = 0
    return 0 unless valid_ternary?(@trinary)
    @trinary.chars.reverse.each_with_index do |value, index|
      result += value.to_i * (3**index)
    end
    result
  end

  private

  def valid_ternary?(trinary_candidate)
    numeric?(trinary_candidate) &&
      trinary_candidate.chars.all? { |e| e.to_i.between?(0, 2)}
  end

  def numeric?(obj)
    !obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/).nil?
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
