class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    return [] if @number < 2
    results = []
    composites = []
    (2..@number).each do |test_num|
      results << test_num
      multiplier = 2
      while test_num * multiplier <= @number
        composites << test_num * multiplier
        multiplier += 1
      end
    end
    results.delete_if{|n|composites.include?(n)}
  end
end
