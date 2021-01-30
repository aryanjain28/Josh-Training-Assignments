puts "Enter the string"
input_str = gets.strip.upcase.split('')
input_len = input_str.length
new_arr = Array.new(input_len,"_ ")

chances = 7
dying_level=0
count = input_len
while chances > 0 
    char = gets.upcase.split('')[0]
    is_present = false
    for i in 0..input_len 
        if input_str[i] == char
            new_arr[i] = char
            count -=1
            is_present = true
        end
    end
    if count ==0 
        puts "You Win"
        break
    end
    p new_arr.join('')    
    if !is_present
        dying_level +=1
        puts "--------"
        puts "   |    "


        case dying_level
            when 1
                print "   o   \n"
            when 2
                print "   o   \n"
                print "   |   \n"
            when 3
                print "   o   \n"
                print "  /|   \n"
            when 4 
                print "   o   \n"
                print "  /|\\  \n"
            when 5
                print "   o   \n"
                print "  /|\\ \n"
                print "   |   \n"
            when 6
                print "   o   \n"
                print "  /|\\ \n"
                print "  /|   \n"
            when 7
                print "   o   \n"
                print "  /|\\ \n"
                print "  /|\\ \n"
                puts "Game Over"
        end
    chances -=1

    end
end