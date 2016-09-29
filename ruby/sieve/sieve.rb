class Sieve
  def initialize(number)
    @range = (2..number)
  end

  def primes
    primes = @range.to_a
    @range.each do |n|
      primes = primes.reject { |p| (p % n).zero? && p != n }
    end
    primes
  end
end
