puts "Enter number:"
num = gets.chomp.to_i

def is_prime(x)
    count = 0
    if ( x == 0)
        puts "Not Prime"
    end
    i = 2
    while i < x
        if (x % i == 0)
            count +=1
        end
        i +=1
    end

    if count >= 1
        puts "Non Prime"
    else
        puts "Prime"
    end
end

is_prime(num)