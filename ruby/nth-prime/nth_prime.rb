class Prime
  def is_prime?(number)
    return false if number < 2
    (2 .. number/2).each do |factor|
      return false if number % factor == 0
    end
    true
  end

  def nth(number)
    raise ArgumentError.new if number == 0
    primes = []
    i = 1
    until primes.count == number
      primes << i if is_prime?(i)
      i += 1
    end
    primes.last
  end
end
