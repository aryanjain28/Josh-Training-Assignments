class Country
    public
    def self.public_method
        puts "public method"
    end
    def print_national_animal
        puts "Tiger"
    end
    
    private
    def self.print_country
        puts "India"
    end
    def print_national_flower
        puts "Lotus"
    end
    protected
    def print_population
        puts "population is 100"
    end
    def self.print_capital
        puts "Delhi"
    end
end

class State < Country
    def print_state
        puts "Maharashtra"
    end
    def print_base_fun
        print_national_flower
        print_population
    end
end

Country.public_method
Country.print_country
Country.print_capital

State.public_method
State.print_country
State.print_capital

s1 = State.new 

s1.print_national_animal
#s1.print_national_flower
#s1.print_population

s1.print_base_fun