class School
  attr_accessor :name, :roster
  
  def initialize(school_name)
    @roster = {}
    @name = school_name
  end
  
  def add_student(student_name, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
      @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end
end