class School
  VERSION = 1

  def initialize
    @students_hash = Hash.new{|hash, key| hash[key] = []}
  end

  def to_h
    # to_h means two things here.  Should I define a new Array method that does
    # the same thing as Array.to_h?
    @students_hash.sort.to_h
  end

  def add(name, grade)
    @students_hash[grade] << name
    @students_hash[grade].sort!
  end

  def grade(grade)
    @students_hash[grade]
  end
end
