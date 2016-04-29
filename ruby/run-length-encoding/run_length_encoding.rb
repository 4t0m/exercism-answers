class RunLengthEncoding
  VERSION = 1

  def self.encode(plain_text)
    encoded_string = ""
    runs = self.tally(plain_text)
    runs.each do |run|
      value = run[0]
      run_length = run.count.to_s
      if run.count > 1
        encoded_string << "#{run_length}#{value}"
      else
        encoded_string << value
      end
    end
    encoded_string
  end

  def self.decode(coded_text)
    run_length = ""
    plain_text = ""
    numbers = "1234567890".split("")
    coded_text.each_char do |char|
      if numbers.include?(char)
        run_length << char
      elsif run_length == ""
        plain_text << char
      else
        run_length.to_i.times{plain_text << char}
        run_length = ""
      end
    end
    plain_text
  end

  def self.tally(plain_text)
    current_char = plain_text[0]
    array = [[]]
    index = 0

    plain_text.each_char do |char|
      if char == current_char
        array[index] << char
      else
        index += 1
        array[index] = [char]
        current_char = char
      end
    end
  array
  end
end
