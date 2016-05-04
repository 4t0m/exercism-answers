class PhoneNumber
  attr_reader :number
  attr_reader :area_code

  def initialize(input)
    @number , @area_code = interpret_number(input)
  end

  def interpret_number(input)
    number = input.match /(1)?\D*(\d{3})\D*(\d{3})\D*(\d{4})(\d)?/
    if number && number[5].nil?
      [number[2] + number[3] + number[4], number[2]]
    else
      ["0000000000", "000"]
    end
  end
  private :interpret_number


  def to_s
    @number.gsub(/(\d{3})(\d{3})(\d{4})/){"(#{$1}) #{$2}-#{$3}"}
  end

end
