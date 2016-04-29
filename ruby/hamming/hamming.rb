class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    raise ArgumentError.new() unless strand_1.length == strand_2.length
    count = 0
    strand_1.chars.each_with_index do |code, index|
      count += 1 if code != strand_2[index]
    end
    count
  end
end
