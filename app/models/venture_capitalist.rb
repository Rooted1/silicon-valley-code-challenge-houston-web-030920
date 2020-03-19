class VentureCapitalist
    attr_reader :name, :total_worth
    @@all = []

    def initialize(name, total_worth)
        @name = name 
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.tres_commas_club
        @@all.select do |venture|
            venture.total_worth > 1000000000
        end
    end

    def offer_contract (start_up, type, amount)
        FundingRound.new(start_up, self, type, amount)
    end

    def funding_rounds
        FundingRound.all.select do | rounds |
            rounds.venture_capitalist == self
        end
    end

    def portfolio
        all_start_ups = []
        FundingRound.all.each do | rounds |
            if rounds.venture_capitalist == self
                all_start_ups  << rounds.start_up
            end
        end
        return all_start_ups
    end

    def biggest_investment
        self.funding_rounds.max_by do | round |
            round.investment
        end
    end

    def invested(domain)
        total = 0
        self.portfolio.each do |startup|
            if startup.domain == domain
             FundingRound.all.each do |rounds|
                if rounds.start_up == startup
                    total += rounds.investment
                end
             end      
            end
        end
        return total
    end
    
end






















