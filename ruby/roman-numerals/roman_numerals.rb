class Numeric
  def to_roman
    return 'I' if self == 1
    return 'I' * self if self < 4
    return 'I' + 5.to_roman if self < 5
    return 'V' if self == 5
    return 'V' + (self - 5).to_roman if self < 9
    return 'IX' if self == 9
    return 'X' if self == 10
    return 'X' * (self / 10) + (self % 10).to_roman if self < 40
    return 'XL' + (self % 10).to_roman if self < 50
    return 'L' if self == 50
    return 'L' + (self % 50).to_roman if self < 90
    return 'XC' + (self % 10).to_roman if self < 100
    return 'C' if self == 100
    return 'C' * (self / 100) + (self % 100).to_roman if self < 400
    return 'CD' + (self % 400).to_roman if self < 500
    return 'D' if self == 500
    return 'D' + (self % 500).to_roman if self < 900
    return 'CM' + (self % 900).to_roman if self < 1000
    return 'M' if self == 1000
    return 'M' * (self / 1000) + (self % 1000).to_roman if self < 4000
  end
end

module BookKeeping
  VERSION = 2
end
