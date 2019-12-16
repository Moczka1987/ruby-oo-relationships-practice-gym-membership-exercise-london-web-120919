class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all #Get a list of all lifters
    @@all
  end 

  def memberships #Get a list of all the memberships that a specific lifter has
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms #Get a list of all the gyms that a specific lifter has memberships to
    memberships.map {|membership| membership.gym}
  end 

  def self.average_total #Get the average lift total of all lifters
    self.all.map {|lifter| lifter.lift_total }.reduce(:+) / self.all.size
  end 

  def cost#Get the total cost of a specific lifter's gym memberships
    memberships.map {|membership| membership.cost}
  end 

  def new_lifter(cost,gym)#Given a gym and a membership cost, sign a specific lifter up for a new gym
  Membership.new(cost, gym, self) 
  end 

end
