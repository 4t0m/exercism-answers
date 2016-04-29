class Phrase
  VERSION = 1
  def initialize(string)
    @string = string
  end

  def word_count
    hash = Hash.new(0)
    lowercase_string = @string.downcase
    lowercase_string.gsub!(/[!&@$%^&:,.]/ , " ")
    words = lowercase_string.split(" ")
    words.each do |word|
      if word[0] == "'" && word[-1] == "'"
        hash[word[1...-1]] += 1
      else
        hash[word] += 1
      end
    end
    hash
  end
end
