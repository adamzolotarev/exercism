class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    primes = (2..@number).to_a
    (2..@number).each do |n|
      primes.each { |p| primes.delete(p) if (p % n).zero? && p != n }
    end
    primes
  end
end
