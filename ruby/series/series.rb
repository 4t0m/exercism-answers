class Series

  def initialize(number)
    @number = number
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @number.length
    @number
      .chars
      .map(&:to_i)
      .each_cons(slice_length)
      .to_a
  end
end
