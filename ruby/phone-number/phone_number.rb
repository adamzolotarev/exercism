class PhoneNumber
  attr_reader :number

  def initialize(phone)
    if !valid?(phone)
      @number = '0000000000'
    else
      @number = phone.gsub(/\D/, '')
      @number = '0000000000' if @number.size != 10
    end

  end



  def valid?(phone)
    /\p{L}/.match(phone).nil?
  end
end
