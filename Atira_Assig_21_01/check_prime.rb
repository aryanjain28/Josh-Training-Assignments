def is_prime(num)
	2.upto(num-1) do |n|
		if num%n == 0
			return false
		end
	end
	return true
end

puts(is_prime(49))
