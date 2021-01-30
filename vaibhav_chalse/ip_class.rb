puts "Enter IP address"
ip = gets
net1 =  ip.split('.',1)
net1 = net1[0].to_i
case net1
when (1..127)
    puts "Class A"
when (128..191)
    puts "Class B"
when (192..223)
    puts "Class C"
when (224..239)
    puts "Class D"
when (240..255)
    puts "Class E"
else 
    puts "Invalid class"
end
