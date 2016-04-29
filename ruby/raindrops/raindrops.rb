class Raindrops
  VERSION = 1
  def self.convert(number)
    result = ""
    prime_factors = []
    (3..number).each do |n|
      prime_factors << n if number % n == 0 && is_prime?(n)
    end
    result << "Pling" if prime_factors.include?(3)
    result << "Plang" if prime_factors.include?(5)
    result << "Plong" if prime_factors.include?(7)
    result = number.to_s if result == ""
    result
  end
end

def is_prime?(number)
  (2...number).each do |factor|
    return false if number % factor == 0
  end
  true
end
