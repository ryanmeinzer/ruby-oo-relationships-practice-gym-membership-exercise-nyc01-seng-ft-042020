require 'pry'

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

# make gym
gym1 = Gym.new("Equinox")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Crunch")
# binding.pry

# make lifter
lifter1 = Lifter.new("Mike", 120)
lifter2 = Lifter.new("Morgan", 89)
lifter3 = Lifter.new("James", 150)
# binding.pry

# make membership
membership1 = Membership.new(70, lifter2, gym3)
membership2 = Membership.new(30, lifter3, gym2)
membership3 = Membership.new(120, lifter1, gym1)
# membership3 = Membership.new(120, Lifter.new("Mike", 120), gym1)

binding.pry

puts "Gains!"
