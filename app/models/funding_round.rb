class FundingRound

    @@all = []
        
    def initialize(start_up, venture_capitalist, type, investment)
        @start_up = start_up
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment.to_f
        @@all << self
    end

    def start_up
        return @start_up
    end 

    def venture_capitalist
        return @venture_capitalist
    end 

    def type
        return @type
    end 

    def investment
        return @investment
    end 

    def self.all
        return @@all
    end


end
