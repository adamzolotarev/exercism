class PrimeFactors
  require 'prime'

  def self.for(number)
    Prime.prime_division(number).flat_map { |factor, power| [factor] * power }
  end
end
