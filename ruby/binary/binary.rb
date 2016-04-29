class Binary
  VERSION = 2
  def initialize(binary)
    input_chars = binary.chars
    if input_chars.any?{|char| !(["0","1"].include?(char))}
      raise ArgumentError.new
    else
      @binary = binary
    end
  end

  def to_decimal
    result = 0
    reversed_chars = @binary.reverse.chars
    reversed_chars.each_with_index do |value, index|
      result += value.to_i * 2**index
    end
    result
  end
end
