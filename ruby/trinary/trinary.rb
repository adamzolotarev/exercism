class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 unless valid_ternary?(@trinary)
    @trinary.chars.reverse.each_with_index.reduce(0) do |sum, (value, index)|
      sum + (value.to_i * 3**index)
    end
  end

  private

  def valid_ternary?(trinary_candidate)
    trinary_candidate.chars.all? { |e| %w(0 1 2).include? e }
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
