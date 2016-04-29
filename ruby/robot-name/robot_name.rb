class Robot
  VERSION = 1
  LETTERS = ('A'..'Z').to_a.freeze
  private_constant :LETTERS

  @@used_names = []
  attr_reader :name

  def initialize
    while true
      name = '%s%s%03d' % [LETTERS.sample, LETTERS.sample, rand(100)]
      unless @@used_names.include?(name)
        @name = name
        @@used_names << name
        break
      end
    end
  end

  def reset
    initialize
  end
end
