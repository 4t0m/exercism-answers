class RunLengthEncoding
  VERSION = 1

  def self.encode(plain_text)
    plain_text.gsub(/(.)\1*/) do |run|
      run_length = run.length == 1 ? "" : run.length
      "#{run_length}#{run[0]}"
    end
  end

  def self.decode(coded_text)
    coded_text.gsub(/(\d+)(\D)/){$2 * $1.to_i}
  end
end

