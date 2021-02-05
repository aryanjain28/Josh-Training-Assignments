puts "Enter E-mail ID"
email = gets
if email =~ /\b[\w+@{1}][\w.{1}]\b/
    puts "valid"
else 
    puts "Invalid"
end
