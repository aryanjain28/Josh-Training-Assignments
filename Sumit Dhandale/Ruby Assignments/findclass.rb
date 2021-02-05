def checkclass(address)
    
    prefix=address.split('.')[0].to_i
    if prefix>=1 && prefix<=127
        puts "A"
    elsif prefix >= 128 && prefix <= 191
        puts "B"
    elsif prefix >= 192 && prefix <=223 
        puts "C"
    elsif prefix >= 224 && prefix <=239 
        puts "D"
    else
        puts "E"
    end
    
end
puts "Enter IP Address: "
address=gets.chomp
checkclass(address)