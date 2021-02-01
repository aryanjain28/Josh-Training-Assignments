class Parent
  #by default methods public
  def m1
    puts "I Am Public"
  end
  protected
  def m2
    puts "I am Protected"
  end
  def m3
    puts "I am also protected"
  end
  private
  def m4
    puts "I am private"
  end
end

class Child < Parent
  def m5
    puts "I am public of child"
    m2 #protected can be called in subclass
    m3
    
  end
end 

P1 = Parent.new
C1 = Child.new

P1.m1 #I am Public
#P1.m2 #No method error
#P1.m3 #no method error
#P1.m4 #no method errr

C1.m1 #I am Public
C1.m5 #I am public of child
