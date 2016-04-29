class Array
  def accumulate
    each_with_object([]) do |operation, accum|
      accum << yield(operation)
    end
  end
end
