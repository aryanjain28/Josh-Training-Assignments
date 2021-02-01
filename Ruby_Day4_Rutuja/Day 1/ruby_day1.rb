#if number is prime or not
def prime(no)
    return false if no < 2
  (2..(no-1)).each do |i|
    return false if no % i == 0
  end
  return true
end

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

#reverse a-z
("a".."z").to_a.reverse.each {|no| puts no}

#
def find_class(str)
    str = str.split('.')[0]
    if (str >= '0' && str <= '127')
        return "Class A"
    elsif (str > '127' && str <= '191')
        return "Class B"
    elsif (str > '191' && str <= '223')
        return "Class C"
    elsif (str > '223' && str <= '239')
        return "Class D"
    else (str > '127' && str <= '191')
        return "Class E"
    end
end

#regex for mobile no,email address,email,name,gender and amount

number = "9890565393"

number.match(/\d{10}/) ? "success" : "Fail"

name.match(/[a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?[a-zA-Z]{1,}\z/) ? "Success" : "Fail"

gender.match(/(m|f)/) ? "success" : "Fail"

amount.match(/\A[1-9]\d*\.\d*\z/) ? "success" : "Fail"

gmail_id.match(/\A(\w\.?\-?)+@[a-z]+\.[a-z]+\z/) ? "success" : "Fail"

