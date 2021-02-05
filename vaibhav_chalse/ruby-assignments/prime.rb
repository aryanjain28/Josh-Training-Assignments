def is_prime(num)
    (2..(Math.sqrt(num))).each do |x|
        if num % x == 0
            return false
        end
    end
        return true
end

puts "Enter number: "
num = gets
num = num.to_i
puts("result=> #{is_prime(num)}");
