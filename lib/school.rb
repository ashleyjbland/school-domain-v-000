# code here!
class School

  def initialize(name)
    @name=name
    @roster = {}
  end

  def roster
    @roster
  end


  def add_student(student_name, student_grade)
    @student_name=student_name
    @student_grade=student_grade
    if @roster.include?(student_grade)
      @roster[student_grade] << student_name
    else
    @roster[student_grade] = [student_name]
  end
 end

  def grade(input)
    roster[input]
  end

  def sort
    roster.each do |student_grade, student_name|
      @roster[student_grade] = student_name.sort
    end
  end


end
