class StartUp
    attr_accessor(:name)
    attr_reader(:founder, :domain)

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end 

    def pivot(domain, name)
        self.domain = domain
        self.name = name
    end

    def self.all
        return @@all
    end 

    def self.find_by_founder(founder_name)
        @@all.find_index do | startup |
            startup.founder == founder_name
        end
    end
    
    def self.domains
        @@all.select do |startup|
            startup.domain 
        end
    end

    def sign_contract(venture_capitalist, type, amount)
        FundingRound.new(self, venture_capitalist, type, amount)
    end 

    # per startup find total funding rounds        
    def num_funding_rounds
        FundingRound.all.select do | rounds |
            rounds.start_up == self
        end.count
    end 

    def total_funds
        total = 0
        FundingRound.all.each do | rounds |
            if rounds.start_up == self
                total += rounds.investment
            end
        end
        return total
    end

    def investors
        all_investors = []
        FundingRound.all.each do | rounds |
            if rounds.start_up == self
                all_investors  << rounds.venture_capitalist
            end
        end
        return all_investors
    end 

    def big_investors 
        self.investors.select do |investor|
            VentureCapitalist.tres_commas_club.include?(investor)
        end
    end

end

