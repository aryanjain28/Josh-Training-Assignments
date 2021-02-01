#find school_level using grade
def school_level(grade)
    if grade >= 1 && grade <= 5
      return "to the elementary"
    elsif grade > 5 && grade <=8
      return "to the middle school"
    elsif grade >8 && grade <=12
      return "to the high school"
    else
      return "to the college"
    end
  end