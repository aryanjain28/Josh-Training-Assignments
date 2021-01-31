class Student
    attr_accessor :roll_number, :marks_physics, :marks_chemistry, :marks_maths
    def initialize(roll_number, marks_physics,marks_chemistry,marks_maths)
        @roll_number = roll_number
        @marks_physics = marks_physics
        @marks_chemistry = marks_chemistry
        @marks_maths = marks_maths
    end

    public
    def final_result
        puts "Roll Number: #{roll_number}"
        if marks_physics < 40
            puts "Fail in Physics"
        else
            puts "Pass in Physics"
        end

        if marks_chemistry < 40
            puts "Fail in Chemistry"
        else
            puts "Pass in Chemistry"
        end

        if marks_maths < 40
            puts "Fail in Maths"
        else
            puts "Pass in Maths"
        end

        sum = marks_physics + marks_chemistry + marks_maths
        sum = sum.to_i
        puts "Total Marks: #{sum}"
        percentage = sum/3
        puts "Percentage: #{percentage}"
        puts "\n"
    end
end

students = []

while true
    puts "***STUDENT MANAGEMENT***"
    puts "1. New Student"
    puts "2. Display Result"
    puts "3. Exit"
    choice = gets.to_i
    case choice
    when 1
        puts "Enter Roll No:"
        roll_number = gets.chomp
        puts "Enter Physics subject marks:"
        marks_physics = gets.chomp.to_i
        puts "Enter Chemistry subject marks:"
        marks_chemistry = gets.chomp.to_i
        puts "Enter Maths subject marks:"
        marks_maths = gets.chomp.to_i
        puts "\n"

        students.append(Student.new(roll_number,marks_physics,marks_chemistry,marks_maths))

    when 2
        students.each do |student|
            student.final_result
        end
    when 3
        exit(0)
    end
end