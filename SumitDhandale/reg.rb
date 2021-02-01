def checkName(name)
    if(name=~/^[a-zA-Z\-\`\']++(?: [a-zA-Z\-\`\']++)?$/)
        puts "correct"
    else
        puts "Incorrect"
    end
end

def checkGender(gender)
    if gender.match(/^M$/)
        puts "Male"
    end
    if gender.match(/^F$/)
        puts "Female"
    else
        puts "didn't match"
    end
end
        
def checkMail(mail)
    if(mail.match(/\A[\w]+@\w+\.\w+\z/))
        puts "Correct"
    else
        puts "Incorrect"
    end 
end

def checkMbileNo(no)
    if(no=~/^[1-9]{1}\d{9}$/)
        puts "Correct"
    else
        puts "Incorrect"
    end
    
end

puts "Enter your name: "
name=gets.chomp
puts checkName(name)

puts "Enter Email: "
mail=gets.chomp
puts checkMail(mail)

puts "Enter Mobile No: "
no=gets.chomp
checkMbileNo(no)
