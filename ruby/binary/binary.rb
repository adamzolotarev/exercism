class Binary
  def initialize(binary)
    raise ArgumentError unless valid_binary?(binary)
    @binary = binary
  end

  def to_decimal
    bits = @binary.to_s.chars.map(&:to_i)
    total = 0

    bits.each_with_index do |n, i|
      total += 2**(bits.length - i - 1) * n
    end
    total
  end

  private

  def valid_binary?(binary)
    binary.each_char.all? { |c| c == '0' || c == '1' }
  end
end

module BookKeeping
  VERSION = 2
end
