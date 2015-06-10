# Write code here


class School
  attr_accessor = :name

  
  def initialize(school_name)
    @name = school_name
    @school_roster = {}
  end

  def roster
    @school_roster
  end

  def add_student(student_name, grade)
    if @school_roster.keys.include?(grade)
      @school_roster[grade] << student_name
    else
      @school_roster[grade] = [student_name]
    end
  end
  def grade(gradenum)
    @school_roster[gradenum]
  end

  def sort

    sorted = {}
    @school_roster.each do |key, value|
      sorted[key] = value.sort
    end
    sorted
    

  end

end