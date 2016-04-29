class Grains
  def self.square(number)
    2 ** (number - 1)
  end

  def self.total
    (0...64).inject(0){|accum, n| accum + (2 ** n)}
  end
end
