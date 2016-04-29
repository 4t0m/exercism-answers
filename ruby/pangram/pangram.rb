class Pangram
  VERSION = 1

  def self.is_pangram?(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    all_letters = string.downcase.chars
    #puts all_letters.inspect
    alphabet.each_char do |char|
      #puts "this fails bc #{char}" unless all_letters.include?(char)
      return false unless all_letters.include?(char)
    end
    true
  end
end

puts Pangram.is_pangram?('"Five quacking Zephyrs jolt my wax bed."')
