class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise ArgumentError.new, "Strands are of different length."
    end
    (0...strand_2.length).count{|index|strand_1[index] != strand_2[index]}
  end
end
