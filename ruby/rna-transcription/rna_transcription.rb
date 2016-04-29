class Complement
  VERSION = 3
  def self.of_dna(dna)
    to_rna = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    rna = ''
    dna.each_char do |char|
      raise ArgumentError.new unless to_rna.has_key?(char)
      rna << to_rna[char]
    end
    rna
  end
end
