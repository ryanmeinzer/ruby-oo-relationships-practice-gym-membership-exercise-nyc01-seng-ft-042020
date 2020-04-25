require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

#   - Get a list of all lifters
  # @@all array with class method

  def self.all
    @@all
  end

#   - Get a list of all the memberships that a specific lifter has
  # @all instance method through membership.rb as join method

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

#   - Get a list of all the gyms that a specific lifter has memberships to
  # get gyms through membership.rb as join method

  def gyms
    memberships.map { |membership| membership.gym }
    # Gym.all.select { |gym| gym.lifter == self }
  end

#   - Get the average lift total of all lifters
  # calculate average from lift total class

  def self.average_lift_total
    total = @@all.map { |lifter| lifter.lift_total }
    total.sum / total.length
  end

#   - Get the total cost of a specific lifter's gym memberships
  # get total through membership
  def memberships_total_cost
    memberships.map { |membership| membership.cost }.sum
  end

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym
  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end