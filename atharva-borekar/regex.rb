def regex_mobile()
    puts "Enter Mobile Number:"
    number = gets

    rm = /^[1-9]{1}[0-9]{9}$/

    if (number.match(rm))
        puts "Correct Format"
    else
        puts "Wrong Format"
    end
end

def regex_email()
    puts "Enter Email:"
    email = gets
    re = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+.[a-z]$/

    if (email.match(re))
        puts "Correct Format"
    else
        puts "Wrong Format"
    end
end

def regex_name()
    puts "Enter Name:"
    name = gets

    rn = /^[a-z ,.'-]+$/i

    if (name.match(rn))
        puts "Correct Format"
    else
        puts "Wrong Format"
    end
end

def regex_gender()
    puts "Enter Gender:"
    gender = gets

    rg = /^[MFT]$/

    if (gender.match(rg))
        puts "Correct Format"
    else
        puts "Wrong Format"
    end
end

def regex_amount()
    puts "Enter Amount:"
    amount = gets

    ra = /^[0-9]+$/

    if (amount.match(ra))
        puts "Correct Format"
    else
        puts "Wrong Format"
    end
end

p "Operation"
p "1. Mobile Number"
p "2. Email"
p "3. Name"
p "4. Gender"
p "5. Amount"
p "6. Exit"

num = gets.chomp.to_i
case num
when 1
    regex_mobile()
when 2
    regex_email()
when 3
    regex_name()
when 4
    regex_gender()
when 5
    regex_amount()
when 6
    exit(0)
end


