class Bob

  def hey(string)
    alpha_cap = ("A" .. "Z").to_a
    alpha = ("a" .. "z").to_a
    numbers = "1234567890".split("")
    alphanumeric = alpha_cap + alpha + numbers
    return 'Whoa, chill out!' if string.upcase == string && string.downcase != string
    return 'Sure.' if string[-1] == '?'
    return 'Fine. Be that way!' unless string.chars.any? {|char|alphanumeric.include?(char)}
    return 'Whatever.'
    return 'Fine. Be that way!'
  end

end
