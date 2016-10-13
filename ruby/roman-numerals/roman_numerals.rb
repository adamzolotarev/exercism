class Integer
  ROMAN_NUMERALS =
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }.freeze

  def to_roman
    number = self
    roman_conversion = ''

    ROMAN_NUMERALS.each do |normal, roman|
      roman_conversion << roman * (number / normal)
      number = number % normal
    end
    roman_conversion
  end
end

module BookKeeping
  VERSION = 2
end
