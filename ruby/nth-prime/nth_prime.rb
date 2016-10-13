class Prime
  def self.nth(n)
    Sieve.nth_prime(n)
  end
end

module Sieve
  def self.nth_prime(n)
    up_to = n * (Math.log(n) + 2)
    primes = (2..up_to).to_a
    primes.each do |k|
      primes.reject! { |p| (p % k).zero? && p != k }
    end
    primes[n - 1]
  end
end

module BookKeeping
  VERSION = 1
end
