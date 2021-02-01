
def checkPrime(number)
    if number==1 
        return 0 
    end
    if number==2
        return 1
    end
    flag=1
    x=2;
    for x in 2..Math.sqrt(number)
        if(number%x==0)
            flag=0
            break
        end
        x+=1
    end
    return flag
end

puts "Enter a number: "
number=gets.chomp.to_i
ans=checkPrime(number)
if ans==1
    puts "The given number is prime"
else
    puts "The given number is not prime"
end

    
