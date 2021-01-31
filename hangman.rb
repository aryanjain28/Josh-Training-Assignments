require 'set'

class Hangman
    attr_accessor :words, :guess_word, :lives, :guess_word_wo_consonants, :samples
    def initialize()
        @words = []
        @lives = 5
        @guess_word = ''
        @guess_word_wo_consonants = ''
    end

    def setup()
        @guess_word = samples = @words.sample
        vowels = Set['a','e','i','o','u']

        samples.each_char{ |x|
            if Set[x].subset?(vowels)
                guess_word_wo_consonants.concat(x)
                next
            else
                guess_word_wo_consonants.concat("_")
            end
        }
        system("clear")
    end

    def get_char_indices(str,target)
        sz = target.size
        (0..str.size-sz).select {|i| str[i,sz] == target}  
    end

    def get_hangman()
        puts "\t\tLIVES REMAINING: #{@lives}"
        puts "\t\t\tHANGMAN"
        if @lives <= 4 
            puts "\t\t\t\t    O    "
        end
        if @lives <= 3 
            puts "\t\t\t\t----|----"
        end
        if @lives <= 2 
            puts "\t\t\t\t    |    "
        end
        if @lives <= 1 
            puts "\t\t\t\t   / \\   "
        end
        if @lives <= 0 
            puts "\t\t\t\t  /   \\  "
        end
    end

    def game()
        while lives > 0
            puts "\tWORD: #{guess_word_wo_consonants}"
            get_hangman()
            if @guess_word == @guess_word_wo_consonants
                puts "HURRAY!!! YOU HAVE WON!!!"
                exit(0)
            end
            puts "\nEnter guess: "
            guess = gets.chomp
            
            sz = guess.size
            all = get_char_indices(@guess_word,guess)

            if all.length == 0
                @lives = lives - 1
            else
                all.each do |x|
                    guess_word_wo_consonants[x] = guess
                end
            end 
        end
        get_hangman()
        puts "SORRY! YOU HAVE LOST :("
        exit(-1)
    end 

    def get_dictionary()
        puts  "Enter word dictionary(input -1 to stop): "
        while true
            x = gets.chomp
            if x == '-1'
                break
            else
                words.append(x)
            end
        end
    end

    def give_dictionary()
        puts words
    end
end

h = Hangman.new()
h.get_dictionary
h.setup
h.game