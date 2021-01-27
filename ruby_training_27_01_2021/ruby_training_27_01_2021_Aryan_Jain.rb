# Assignment (27/01/2021) :: 

# Create a CLI application to get information 
# about different countries using modules and perform
# following operations based on data:
#       1. Check for UN seat availability for country.
#       2. Check for loan availability for country.
#       3. Check wheather the country is capable of winning a war.


# Aryan Jain.
#_________________________________________________________


require_relative "database"
require_relative "checks"

class Country
    prepend Country_count
    include Will_Win_War
    include Check_Seat_In_UN_Criteria
    include Check_Loan_Criteria

    attr_accessor :name, :gdp, :population, :nStates, :army_strength, :isDeveloped

    def initialize(name, gdp, gdp_rank, population, nStates, army_strength, isDeveloped=False)
        @name = name
        @gdp = gdp
        @gdp_rank = gdp_rank
        @population = population
        @nStates = nStates
        @army_strength = army_strength
        @isDeveloped = isDeveloped

    end

    def show_data()
        print("\n
            Name: #{@name}\n
            GDP: #{@gdp}\n
            GDP Rank: #{@gdp_rank}\n
            Population (in crores): #{@population}\n
            Number of States (inclusive of provisionals): #{@nStates}\n
            Army Strength: #{@army_strength}\n
            Developed: #{@isDeveloped}\n
            \n")
    end

    def check_war_criteria()
        if army_strength_count(@army_strength)
            return "Yes"
        end
        return "No"
    end

    def check_seat_criteria()
        if check_for_seat(@isDeveloped, @gdp_rank)
            return "Yes"
        end
        return "No"
    end

    def check_loan_criteria()
        if check_for_loan(@isDeveloped)
            return "Yes"
        end
        return "No"
    end


end


print("Enter 3-letter country acronym: ")
country_name_key = gets.chomp.to_s.upcase
country = Country.new(*$countries[country_name_key])

puts(country.show_data())
puts("Total number of countries in database: #{Country_count.get_count()}")
puts("Will #{country.name} win the war: #{country.check_war_criteria()}")
puts("Will #{country.name} get seat in UN: #{country.check_seat_criteria()}")
puts("Will #{country.name} get loan in UN: #{country.check_loan_criteria()}")









