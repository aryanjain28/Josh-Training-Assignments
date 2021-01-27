data = {}

module Actions
    def war(country2)
        if self.army_strength > country2.army_strength
            puts "#{self.country_name} wins the WAR!"
        elsif self.army_strength < country2.army_strength
            puts "#{country2.country_name} wins the WAR!"
        end
    end

    def give_info()
        if self.gdp > 1
            puts "#{self.country_name} can apply for loan from International Monetary Fund or World Bank"
        else
            puts "#{self.country_name} can't apply for loan from International Monetary Fund or World Bank"
        end

        if self.developed == 1
            puts "#{self.country_name} can get a seat in UN security council"
        else
            puts "#{self.country_name} can't get a seat in UN security council"
        end
    end

end

class Country
    include Actions
    attr_accessor :country_name,:population, :gdp, :states, :army_strength, :developed
    def initialize(*args)
        @country_name = args[0]
        @population = args[1]
        @gdp = args[2]
        @states = args[3]
        @army_strength = args[4]
        @developed = args[5]
    end
end


while true
    puts "***Country Information***"
    puts "1. Enter new country info"
    puts "2. Get Details"
    puts "3. War"
    puts "4. Exit"
    choice = gets.to_i

    case choice
    when 1
        puts "Enter country name:"
        country= gets.chomp.upcase
    
        puts "Enter #{country}'s population:"
        population = gets.chomp.to_i

        puts "Enter #{country}'s GDP (in billion dollars):"
        gdp = gets.chomp.to_f

        puts "Enter #{country}'s states (enter -1 to stop):"
        states = []
        while true
            state = gets.chomp
            if state == '-1'
                break
            else
                states.append(state)
            end
        end
        puts "Enter #{country}'s army strength:"
        army_strength = gets.chomp.to_i

        developed = 0
        puts "Is #{country}'s state developed?(Y-yes , N-no):"
        choice = gets.chomp.upcase
        if choice == 'Y'
            developed = 1
        end

        data[country] = Country.new(country,population,gdp,states,army_strength,developed)
    when 2
        puts "Enter Country name:"
        country = gets.chomp.upcase
        data[country].give_info()
        
    when 3
        puts "Enter country 1:"
        country1 = gets.chomp.upcase
        puts "Enter country 2:"
        country2 = gets.chomp.upcase

        data[country1].war(data[country2])
    when 4
        exit(0)
    end
end



