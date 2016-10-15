class Prime
  @primes ||= [2, 3, 5]

  def self.nth(n)
    raise ArgumentError if n < 1
    candidate = @primes.last + 2

    while @primes.length < n
      @primes << candidate if prime?(candidate)
      candidate += 2
    end

    @primes[n - 1]
  end

  def self.prime?(candidate)
    root = Math.sqrt(candidate)
    @primes.all? do |prime|
      return true if prime > root
      (candidate % prime).nonzero?
    end
  end
end

module BookKeeping
  VERSION = 1
end
