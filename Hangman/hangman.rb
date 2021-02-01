wordList = [
    "Aryan", "Sumit", "Ashutosh", "Atharva", "Rutuja", 
    "Samruddhi", "Atira",
    "Josh", "Interns", "Software", "Ruby"]

attempt = 10
nWords = wordList.size

word = wordList[rand(nWords)].upcase
nLetters = word.size
index = 0
myWord = ""
puts(word)

while attempt > 0 && nLetters > 0
    puts(myWord.strip + " _"*nLetters)

    print("\n\nEnter you guess: ")

    guess = gets().upcase
    # guess = guess.upcase

    if guess.chomp.upcase == word[index].chomp
        puts("\nRight!\n\n")
        index += 1
        nLetters-=1
        myWord = myWord.strip + " #{guess} "
    else
        puts("\nWrong!\n\n")
        attempt -= 1
    end

    puts("You have #{attempt} attempts left!\n\n") 
end

puts("Correct answer is: #{myWord.strip + " _"*nLetters}")