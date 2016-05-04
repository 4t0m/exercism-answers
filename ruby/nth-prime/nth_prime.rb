class Prime
  def prime?(number)
    return false if number < 2
    sqrt = Math.sqrt(number)
    2.upto(sqrt) do |factor|
      return false unless number % factor != 0
    end
  end
  private :prime?

  def nth(number)
    raise ArgumentError.new if number == 0
    primes = [2]
    i = 3
    until primes.count == number
      primes << i if prime?(i)
      i += 2
    end
    primes.last
  end
end
