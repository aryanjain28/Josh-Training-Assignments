class Stud
  attr_accessor :roll_no
  def initialize(roll_no)
    @roll_no = roll_no
  end
  @@student_data = {"201" => ["Ashish S",80,78,90],
    "202" => ["Rohit D",98,78,90],
    "203" => ["John S",87,86,83],
    "204" => ["Swara K",76,87,79],
    "205" => ["Aishwarya G",80,93,85],
    "206" => ["Roshani D",81,93,83]}
  @@val = 0
  @@avg = 0
  def print_result
    @@val = @@student_data[roll_no].to_a
    puts "Roll No: #{roll_no}"
    puts "Name: #{@@val[0]}"
    puts "Sub1: #{@@val[1]}" 
    puts "Sub1: #{@@val[2]}" 
    puts "Sub1: #{@@val[3]}" 
    @@avg = (@@val[1] + @@val[2] + @@val[3])/3
    puts "Percentage: #{@@avg}"
  end 
end
puts "Roll Numbers : 201,202,203,204,205,206"
puts "Enter Any roll number from list to get detailed result"
input1 = gets
p input1.chomp
s1 = Stud.new(input1.chomp)
s1.print_result

