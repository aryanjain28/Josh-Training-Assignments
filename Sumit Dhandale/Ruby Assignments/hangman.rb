class Hangman

  def initialize
    @secret_word = select_word
    @guess_word = Array.new(@secret_word.length,"_")
    @failed_attempts = 0
  end

  def start_game
    player_won = false
    while @failed_attempts != 7
      @guess_word.each do |x|
        print x+" "
      end
      puts "#{7 - @failed_attempts.to_i} turns left" 
      print "Enter a letter : "
      letters = gets.chomp[0]
      break if letters == "exit"
      update_guess_word(letters) if letters
      player_won = player_won?
      break if player_won
    end
    puts "Game over, the secret word was: #{@secret_word}" if @failed_attempts == 7
  end

  def select_word
    puts "Please enter a word to guess:"
    gets.chomp
  end

  def update_guess_word(letters)
    letters.downcase!
    if @secret_word.include?(letters)
      for i in 0..@secret_word.length
          if @secret_word[i] == letters
              @guess_word[i] = letters
          end
      end
      print_pic(0)
    else
      print_pic(1)
    end


  end

  def player_won?
    if !@guess_word.include?("_")
      puts "CONGRATULATIONS YOU HAVE WON"
      true
    end
  end

  def print_pic(increment)
    @failed_attempts += increment

    case @failed_attempts
    when 0
        print ("\n____\n|   |\n|    \n|     \n|\n|\n|\n")
    when 1
        print ("\n____\n|   |\n|   O\n|\n|\n|\n|\n")
    when 2
        print ("\n____\n|   |\n|   O\n|   |\n|\n|\n|\n")
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
        puts "YOU FAILED"
    end
    puts ""
  end

end

my_game = Hangman.new
my_game.start_game