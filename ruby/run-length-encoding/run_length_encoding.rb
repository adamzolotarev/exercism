class RunLengthEncoding
  def self.encode(input)
    input
      .chars
      .chunk { |i| i }
      .map { |kind, array| "#{char_count_encoded(array.length)}#{kind}" }
      .join
  end

  def self.decode(input)
    input.scan(/(\d*)(\D)/).inject('') do |decoding, (length, char)|
      decoding << char * char_count_decoded(length)
    end
  end

  def self.char_count_encoded(count)
    return '' if count == 1
    count
  end

  def self.char_count_decoded(length)
    count = length.to_i
    return 1 if count.zero?
    count
  end

  private_class_method :char_count_decoded, :char_count_decoded
end

module BookKeeping
  VERSION = 2
end
