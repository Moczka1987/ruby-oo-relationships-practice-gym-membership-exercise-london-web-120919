# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("Fitness First")
gym2 = Gym.new("Virgin Active")
gym3 = Gym.new("Gymbox")

lift1 = Lifter.new("Bob", 10)
lift2 = Lifter.new("Ben", 30)
lift3 = Lifter.new("Lisa", 20)

mem1 = Membership.new(10, gym1, lift1)
mem2 = Membership.new(5, gym2, lift2)
mem3 = Membership.new(15, gym3, lift3)

binding.pry

puts "Gains!"
