class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all #Get a list of all gyms
    @@all
  end 

  def all_members #Get a list of all memberships at a specific gym
    Membership.all.select {|membership| membership.gym == self}
  end 

  def all_lifters #Get a list of all the lifters that have a membership to a specific gym
    all_members.map {|lift| lift.lifter}
  end 

  def lifters_names 
    all_lifters.map {|lifter| lifter.name}
  end 

  def lift_total#Get the combined lift total of every lifter has a membership to that gym
    all_lifters.map{|lifter| lifter.lift_total}.reduce(:+)
  end 

end
