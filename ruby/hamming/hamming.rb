class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    raise ArgumentError.new() unless strand_1.length == strand_2.length
    (0...strand_1.length).inject(0) do |diff_count, index|
      strand_1[index] == strand_2[index] ? diff_count : diff_count += 1
  end
end
