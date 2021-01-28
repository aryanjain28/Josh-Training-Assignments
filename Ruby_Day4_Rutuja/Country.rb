module Loan
    def can_have_loan(gdp,state_of_country)
        if @gdp < "2.00" && @state_of_country == "developing"
            puts "Can Have Loan from IMF/WB"
        else
            puts "IMF/WB Cant give loan to this country"
        end
    end
end

module Seat 
    def can_have_seat(gdp,state_of_country,population)
        if @gdp > "2.00" && @state_of_country == "developed" && @population > "10000000"
            puts "Can Apply for Membership of UN"
        else
            puts "Cannot Have Membership of UN"
        end
    end
end

module War
    def can_win_war(army)
        if army > "50000"
            puts "High Possibilty of winning the war"
        else
            puts "low possibility of winning the war"
        end
    end
end
class Country
    include Loan
    include Seat
    include War
    attr_accessor :name
    attr_accessor :population
    attr_accessor :gdp
    attr_accessor :no_of_states
    attr_accessor :army
    attr_accessor :state_of_country

    def initialize(name,population,gdp,no_of_states,army,state_of_country)
      @name = name
      @population = population
      @gdp = gdp
      @no_of_states = no_of_states
      @army = army
      @state_of_country =state_of_country
      puts "#{name},#{population},#{gdp},#{no_of_states},#{army},#{state_of_country}"
    end
end
  puts "Name of country"
  name = gets
  puts "Population"
  population = gets
  puts "GDP"
  gdp = gets
  puts "Number of states"
  no_of_states = gets
  puts "Army Personnels"
  army = gets
  puts "developing or developed?"
  state_of_country = gets

  s1 = Country.new(name.chomp,population.chomp,gdp.chomp,no_of_states.chomp,army.chomp,state_of_country.chomp)
  s1.can_have_loan(gdp.chomp,state_of_country.chomp)
  s1.can_have_seat(gdp.chomp,state_of_country.chomp,population.chomp)
  s1.can_win_war(army.chomp)

  
  