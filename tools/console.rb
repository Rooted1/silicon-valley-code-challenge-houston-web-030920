require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console







startup1 = StartUp.new("CodingSchool", "Tim", "www.codingschool.com")
startup2 = StartUp.new("CompTech", "Ruth", "www.comptech.com")
startup3 = StartUp.new("SpaghettiCup", "Josh", "www.sphaghetticup.com")
startup4 = StartUp.new("AppsGet", "Steven", "www.appsget.com")
startup5 = StartUp.new("TechTutor", "Angelo", "www.techtutor.com")
startup6 = StartUp.new("CodingExpert", "Ruth", "www.codingexpert.com")



venture1 = VentureCapitalist.new("Brian", 3000000)
venture2 = VentureCapitalist.new("Greg", 405000)
venture3 = VentureCapitalist.new("Rachel", 79000000000)
venture4 = VentureCapitalist.new("Abbie", 43200000000)
venture5 = VentureCapitalist.new("Steve", 4500000)


fund1 = FundingRound.new(startup1, venture1, "Angel", 2000000)
fund2 = FundingRound.new(startup2, venture2, "Angel", 20000)
fund3 = FundingRound.new(startup3, venture3, "Angel", 50000000)
fund4 = FundingRound.new(startup4, venture4, "Angel", 45000000)
fund5 = FundingRound.new(startup5, venture5, "Angel", 700000)
fund6 = FundingRound.new(startup5, venture3, "Pre-seed", 1500000)
fund7 = FundingRound.new(startup5, venture1, "Angel", 2000)
fund8 = FundingRound.new(startup6, venture1, "Angel", 2000)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line