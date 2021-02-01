*learn rules parameters

#prioritization
#required parameters -> default parameters -> Optional Parameters

#passing variable number of arguments using asteric
    
def try1(x, y=1,*z)
  "got #{x} and #{y} finally #{z}"
end

try1(1,2,3)
 => "got 1 and 2 finally [3]" 
try1(1,2,3,4,5)
 => "got 1 and 2 finally [3, 4, 5]" 
try1(1,2)
 => "got 1 and 2 finally []" 
try1(0)
 => "got 0 and 1 finally []" 

*Rules for method names
    # method
    # _method
    # method_1

*puts vs p
    #puts try to convert everything to string by caling to_s
    #puts always returns nil
    # p returns the object you pass to it i.e raw version of the object
    puts "Hello World"
    #adds new line at the end of line

    print "hello world"
    #continues on the same line

    p "Hello world"

    puts [1,2,3]
    -> 
    1
    2
    3

    print [1,2,3]
    -> [1, 2, 3] => nil 

*learn loops, why use each?

    #while loop
    x =4
    while x>=1 # we can use ';','do','\n' to seperate while condition from code
    puts "hey"
    x -= 1
    end

    hey 
    hey 
    hey 
    hey 
    => nil 

    #for loop
    arr = [1,2,3,4,5]
    for i in arr do
        puts i
    end
    1
    2
    3
    4
    5

    #do while loop
    val =1
    => 1 
    loop do 
      puts "hi"
      val=val+1
      if val >= 5
        break
      end
    end

    #until
    val = 1

    until var == 11 do
        puts var + 10
        var = var + 1
    end

    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    => nil 

*break n next
#break
while true do 
  puts "hi"
  val=val+1
break if val >= 5
end
  
#next
  #same as continue in any lang, skips rest of current iteration
for i in 0..10
  if i <= 5
    next
  end
  puts "#{i}" 
end

*blocks and yeild
    #blocks are anonymous, always invoked with a function or can say passed to a method call,they dosnt belong to object
    def my_def 
      puts "hi"
      yield "20"
      puts "nice to meet you"
    end

    my_def {|x| puts "I am Rutuja, i am #{x}"}

    hi
    I am Rutuja, i am 20
    nice to meet you

    # we can pass block to methods as well and call them using .call
    def test(&block)
        block.call
    end

    test { puts "Hello World!"}

*diff between lambda and procs

factor = Proc.new {|n| p n }
[3,2,1].each(&factor)

lamb = lambda {|n| puts 'hi' }
lamb = -> (n) { puts 'hi' }
#Procs don’t care about the correct number of arguments, while lambdas will raise an exception.
#Return and break behaves differently in procs and lambdas

*write your own myEach method
def my_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i+=1
  end
end
my_each([1,2,3,4,5]) {|i| puts i}

#we can use class to use method on other objects e.g

class My_class
  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i+=1
    end
  end
end


