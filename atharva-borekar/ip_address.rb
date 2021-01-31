def get_ip_class(x)
    ipArray = x.split(".")

    if ipArray[0].to_i >= 255 ||  ipArray[1].to_i > 255 || ipArray[2].to_i > 255 || ipArray[3].to_i > 255 || 
        ipArray[0].to_i <= 0 || ipArray[1].to_i < 0 || ipArray[2].to_i < 0 || ipArray[3].to_i < 0 
        puts "Invalid IP Address"
        exit(1)
    end

    case ipArray[0].to_i
    when 1..126
        puts "Class A"
    when 128..191
        puts "Class B"
    when 192..223
        puts "Class C"
    when 224..239
        puts "Class D"
    when 240..254
        puts "Class E"
    end
end

puts "Enter IP Address:"
ip = gets 
get_ip_class(ip)


