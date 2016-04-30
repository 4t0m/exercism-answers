class Pangram
  VERSION = 1
  def self.is_pangram?(string)
    ("a".."z").each do |letter|
      return false unless string.downcase.include?(letter)
    end
  end
end
