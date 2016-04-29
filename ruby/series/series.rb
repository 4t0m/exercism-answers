class Series

  def initialize(number)
    @number = number
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @number.length
    last_index = @number.length - slice_length
    (0..last_index).each_with_object([]) do |start_index, slice_arr|
      slice = []
      (start_index... start_index + slice_length).each_with_index do |char_index|
        slice << @number[char_index].to_i
      end
      slice_arr << slice
    end
  end
end
