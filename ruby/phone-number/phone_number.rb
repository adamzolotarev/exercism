class PhoneNumber
  attr_reader :number, :area_code
  DEFAULT_PHONE = '0000000000'.freeze

  def initialize(phone)
    if invalid?(phone)
      @number = DEFAULT_PHONE
    else
      @number = phone.gsub(/\D/, '')
      @number = @number[1..-1] if @number.size == 11
      @number = DEFAULT_PHONE if @number.size != 10
    end
    @area_code = @number[0, 3]
  end

  def to_s
    "(#{area_code}) #{number[3, 3]}-#{number[6, 4]}"
  end

  private

  def invalid_11_number_phone?(phone)
    phone.size == 11 && phone[0] != 1
  end

  def invalid?(phone)
    !/\p{L}/.match(phone).nil? || invalid_11_number_phone?(phone)
  end
end
