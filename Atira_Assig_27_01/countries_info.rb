module Loan
    def can_get_loan(gdp, state_of_country)
        if gdp>=3 && state_of_country=="developing" || gdp>=2 && state_of_country=="developed"
            puts "can get loan from IMB/WB"
        else
            puts "can't get loan from IMB/WB"
        end
    end
end

module Seat_in_UN
    def can_have_seat_in_UN(population, gdp)
        if population > 1000 && gdp>2
            puts "can have seat in UN"
        else
            puts "can't have seat in UN"
        end
    end
end

module War
    def can_win_war(army_strength)
        if army_strength > 70
            puts "can win war"
        else
            puts "can't win war"
        end
    end
end

class Country
    attr_accessor :name, :population, :gdp, :states, :army_strength, :state_of_country
    def initialize(name, population, gdp, states, army_strength, state_of_country)
        @name = name
        @population = population
        @gdp = gdp
        @states = states
        @army_strength = army_strength
        @state_of_country = state_of_country
    end
    include Loan
    include Seat_in_UN
    include War
end

puts "Enter Number of Countries :"

country_num = gets.chomp.to_i

countries = []

1.upto(country_num) do
    puts "Enter country name :"
    name = gets.chomp
    puts "Enter country population :"
    population = gets.chomp.to_i
    puts "Enter country gdp :"
    gdp = gets.chomp.to_i
    puts "Enter number of states :"
    states = gets.chomp.to_i
    puts "Enter country army strength :"
    army_strength = gets.chomp.to_i
    puts "Enter state of country(developed/developing) :"
    state_of_country = gets.chomp

    c = Country.new(name, population, gdp, states, army_strength, state_of_country)
    c.can_get_loan(c.gdp, c.state_of_country)
    c.can_have_seat_in_UN(population, gdp)
    c.can_win_war(army_strength)
    countries.push(c)
end

# puts Country.ancestors