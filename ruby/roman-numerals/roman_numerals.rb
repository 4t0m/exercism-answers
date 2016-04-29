class Fixnum
  VERSION = 1

  def to_roman
    converter_hash = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C",
      500 => "D", 1000 => "M"}
    if converter_hash.has_key?(self)
      return converter_hash[self]
    else
      return "#{decompose(self)}"
    end
  end

  def decompose(number)
    increments = [1, 5, 10, 50, 100, 500, 1000]
    increments.each_with_index do |increment, index|
      next_increment = increments[index + 1]
      next_next_increment = increments[index + 2]
      current = (number % increment)
      remainder = (number-(number % increment))
      if increments.include?(number + increment)
        return "#{increment.to_roman}#{(number+increment).to_roman}"
      elsif !next_increment.nil? && (number < next_increment) && (number + increment > next_increment)
        return "#{remainder.to_roman}#{current.to_roman}"
      elsif !next_next_increment.nil? && (number < next_next_increment) && (number + increment > next_next_increment) && ![5,50,500].include?(increment)
        return "#{remainder.to_roman}#{current.to_roman}"
      elsif next_increment.nil? || number < next_increment
        return "#{increment.to_roman}#{(number-increment).to_roman}"
      end
    end
  end
end
