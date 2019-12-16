class Membership
  attr_reader :cost, :gym, :lifter 

  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym 
    @lifter = lifter
    @@all << self 
  end

  def self.all #Get a list of all memberships
    @@all
  end 

end
