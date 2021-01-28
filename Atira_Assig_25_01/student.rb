class Student
    attr_accessor :name, :roll_no, :marks

    # #getters
    # def name
    #     @name
    # end
    # def roll_no
    #     @roll_no
    # end
    # def marks
    #     @marks
    # end

    # #setters
    # def name=(name)
    #     @name = name
    # end
    # def roll_no=(roll_no)
    #     @roll_no = roll_no
    # end
    # def marks=(marks)
    #     @marks = marks
    # end

    # def percentage
    #     marks*100/500
    # end

    def initialize(name, roll_no, marks)
        @name = name
        @roll_no = roll_no
        @marks = marks
    end

    def display_result
        puts "name : #{name}"
        puts "Roll no : #{roll_no}"
        puts "Marks : #{marks}"
        puts "percentage : #{marks*100/500}"
    end

end

# s1 = Student.new("tina", 1, 250)
# s1.display_result

puts "Enter Number of Students :"

student_num = gets.chomp.to_i

students = []

1.upto(student_num) do
    puts "Enter student name :"
    name = gets.chomp
    puts "Enter Roll no :"
    roll_no = gets.chomp
    puts "Enter marks :"
    marks = gets.chomp.to_i

    s = Student.new(name, roll_no, marks)

    # students << s
    students.push(s)
end

puts "*** Students' Result ***"

# students.each  {|student| student.display_result}

students.each do |student| 
    student.display_result
    puts "\n"
end