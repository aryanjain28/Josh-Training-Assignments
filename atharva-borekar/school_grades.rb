puts "Enter Grade:"
grade = gets.chomp.to_i

def get_school_level(x)
    case x
    when 1..5
        puts "Elementary"
    when 6..8
        puts "Middle School"
    when 9..12
        puts "High School"
    else
        puts "College"

    end
end

get_school_level(grade)