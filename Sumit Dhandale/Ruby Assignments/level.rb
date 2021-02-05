def checkLevel(grade)
    if grade>=1 && grade<=5
        puts "Elementary"
    elsif grade<=8 
        puts "Middle School"
    elsif grade<=12 
        puts "High School"
    else
        puts "ColLege"
    end
end

puts "Enter a grade: "
grade=gets.chomp.to_i
checkLevel(grade)