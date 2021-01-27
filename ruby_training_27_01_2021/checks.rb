require_relative "database"

module Country_count    
    def self.get_count()
        return $countries.count
    end
end


module Check_Loan_Criteria
    def check_for_loan(isDeveloped)
        if (isDeveloped)
            return true
        end
        return false
    end
end



module Check_Seat_In_UN_Criteria
    def check_for_seat(isDeveloped, gdp_rank)
        if (isDeveloped) &&  (gdp_rank < 10)
            return true
        end
        return false
    end
end



module Will_Win_War
    def army_strength_count(strength)
        s = strength.values.sum()
        if s > 1000000
            return true 
        end
        return false
    end
end