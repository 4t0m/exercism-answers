class SumOfMultiples
  attr_reader :nums

  def initialize(num1 = 3, num2 = 5, *nums)
    @nums = [num1, num2, nums.sort].flatten
  end

  def to(limit)
    all_multiples = nums.each_with_object([]) do |num, multiples|
      i = 1
      while num * i < limit
        multiples << num * i
        i += 1
      end
    end
    all_multiples.uniq.inject(0){|n, accum| accum += n}
  end
end
