#### Implicit for_each ####

class MyArr
  def initialize(arr)
    @arr = arr
  end
  def for_each
    i = 0
    while i < @arr.length
      yield @arr[i]
      i += 1
    end
  end
end

a=MyArr.new([1,2,3,4])
a.for_each {|x| puts x}



#### Explicit for_each ####
$arr=[1,2,3,4]

def for_each
    i=0
    while i<$arr.length
        yield $arr[i]
        i+=1
    end
end 

myeach { |x| puts x}



#### difference between lamnda and Proc ####

# A lambda checks the number of arguments passed to it, while a proc does not. 
# This means that a lambda will throw an error if you pass it the wrong number of arguments, 
# whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

lamb1 = lambda { |item| puts item }
lamb1.call(1)     # op: 1
lamb1.call(1,2)   # op: ArgumentError (wrong number of arguments (given 2, expected 1))
lamb1.call        # op: ArgumentError (wrong number of arguments (given 0, expected 1))

proc1 = Proc.new { |x| puts x }
proc1.call(1)    # op: 1
proc1.call(1,2)  # op: 1
proc1.call       # op:

# return inside of a lambda triggers the code right outside of the lambda code.

def lambda_func
    lam = lambda { return }
    lam.call
    puts "Inside Lambda"
  end
  
  lambda_test   # op: Inside Lambda

#  return inside of a proc triggers the code outside of the method.

def proc_func
    proc = Proc.new { return }
    proc.call
    puts "Inside Proc"
end
  
  proc_test  # prints nothing direcly returns from method

### diiference between puts and p ###
# Puts automatically adds a new line at the end of your message every time you use it.
# puts always returns nil.
# p returns the object you pass to it.
#p calls the inspect method on the object While puts calls the to_s method.





  
