puts "PLease enter your Word"
word = gets
puts "Let's get started"
puts "\nStart Guessing"
flag = false
word = word.chomp.upcase.split("")
guess_word = Array.new(word.length,"_")
guess_word.each do |x|
    print x+" "
end
cnt = 0
while (true)
    case cnt
    when 0
        print ("\n____\n|   |\n|    \n|     \n|\n|\n|\n")
    when 1
        print ("\n____\n|   |\n|   O\n|\n|\n|\n|\n")
    when 2
        print ("\n____\n|   |\n|   O\n|   |\n\n|\n|\n")
    when 3
        print ("\n____\n|   |\n|   O\n|  \\|\n|\n|\n|\n")
    when 4
        print ("\n____\n|   |\n|   O\n|  \\|/\n|\n|\n|\n")
    when 5
        print ("\n____\n|   |\n|   O\n|  \\|/\n|   |\n|\n|\n")
    when 6
        print ("\n____\n|   |\n|   O\n|  \\|/\n|   |\n|  /\n|\n")
    when 7
        print ("\n____\n|   |\n|   O\n|  \\|/\n|   |\n|  / \\\n|\n")
    end
    
    print "\nGuess word: "
    letter = gets.upcase.chomp

    if word.include?(letter)
        for i in 0..word.length
            if word[i] == letter
                guess_word[i] = letter
            end
        end
    else
        cnt+=1
    end

    print "\n"
    guess_word.each do |x|
        print x+" "
    end
    if !guess_word.include?("_")
        puts "CONGRATULATIONS YOU HAVE WON"
        break
    elsif cnt == 7
        puts "YOU FAILED"
        break
    end


end

