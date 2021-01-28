#required argument

def sum (a,b)
	sum = a+b
end

sum(2,5) #works fine
#sum()  -> error

#default arguments

def sum(a=2, b=5)
	sum = a+b
end

sum() #works fine
sum(3)
sum(2,3)

#variable arguments

def print_all_names(*names)
	names.each do |name|
		puts name
	end
end


#keyword arguments
def print_name(first_name:, last_name:)
	puts "your first name is #{first_name}, last name is #{last_name}"
end

print_name(last_name:"sharma", first_name:"neha")


#loops

#for loop

names = ['neha', 'tina', 'rahul']
 
for item in names 
    puts item
end

#why we should use each rather than for

names = ['neha', 'tina', 'rahul']
 
item = 'mira'
 
for item in names 
    puts item
end
 
puts item #puts rahul

#times loop
10.times { puts "josh" }

#while loop

n = 0
while n < 10
  puts n
  n += 1
end

#until loop

num = 1

until num==5
	puts num
	num += 1
end

#next

10.times do |i|
	next unless i>5
	puts "hello #{i}"
end

#break

10.times do |i|
	break if i>5
	puts "hello #{i}"
end

#for loop

arr = [1,2,3,4,5]

for n in arr do
	puts n
end





















