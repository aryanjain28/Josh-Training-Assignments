class Hangman
    def initialize
      word = ["cricket","bottle","phone","mouse","battery","book"]
      @word = word.sample
      @lives = 5
      @dashes = ""
      @word.size.times do
        @dashes += "_ "
      end
      p @word
    end

    def print_dashes last_guess = nil
      update_dashes last_guess unless last_guess.nil?
      puts @dashes
    end

    def update_dashes last_guess
      new_dashes = @dashes.split
      new_dashes.each_with_index do |letter, index|
        if letter == '_' && @word[index] == last_guess
          new_dashes[index] = last_guess
        end
      end
      @dashes = new_dashes.join(' ')
    end

    def guess_letter
      if @lives > 0
        puts "\n\nEnter your guess"
        guess = gets.chomp

        right_guess = @word.include? guess

        if guess == "exit"
          puts "Thanks for playing..visit again"
        elsif right_guess
          puts "Nice guess"
          print_dashes(guess)
          if @word == @dashes.split.join
            puts "Congratulations you won!"
          end
          guess_letter
        else
          @lives -= 1
          puts "Try Again lives left: #{ @lives }"
          guess_letter
        end
      else
        puts "Game Over!! Out of lives"
      end
    end
    def start_game
      puts "Hey There lets see how well you can play.."
      puts "To exit game type 'exit' "
      print_dashes
      guess_letter
    end
end
  
  h1 = Hangman.new()
  h1.start_game
  
  
  