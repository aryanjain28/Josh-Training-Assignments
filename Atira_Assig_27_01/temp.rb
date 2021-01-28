module Loan
    def self.included(loan_entity)
        # if loan_entity.gdp>=3 && loan_entity.state_of_country=="developing" || loan_entity.gdp>=2 && loan_entity.state_of_country=="developed"
        #     puts "can get loan from IMB/WB"
        # else
        #     puts "can't get loan from IMB/WB"
        # end
        puts loan_entity.gdp
    end
end

class Country
    include Loan
    attr_accessor :population, :gdp, :states, :army_strength, :state_of_country
    
end