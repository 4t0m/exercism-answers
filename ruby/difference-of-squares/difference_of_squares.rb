class Squares
  VERSION = 2
  def initialize(upper_limit)
    @upper_limit = upper_limit
  end

  def square_of_sum
    sum = (0..@upper_limit).inject{|accum, n| accum + n}
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    (0..@upper_limit).each do |num|
      sum += num ** 2
    end
    sum
  end

  def difference
    (self.square_of_sum - self.sum_of_squares).abs
  end

end
