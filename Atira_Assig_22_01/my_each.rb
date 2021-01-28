class Array
    def my_each
      for item in self
        puts "#{item}"
      end
    end
end
  
  [1,2,3].my_each

class Array
    def my_each
      for item in self
        yield(item)
      end
    end
end