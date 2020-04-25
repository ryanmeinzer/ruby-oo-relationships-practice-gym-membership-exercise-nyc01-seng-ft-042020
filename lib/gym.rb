class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

#    - Get a list of all gyms
  # @@ array with class instance

  def self.all
    @@all
  end

#   - Get a list of all memberships at a specific gym
  # get through membership join method

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

#   - Get a list of all the lifters that have a membership to a specific gym
  # get through membership join method

  def gyms
    memberships.map { |membership| membership.lifter }
    # Lifter.all.select { |gym| gym.lifter == self }
  end

#   - Get a list of the names of all lifters that have a membership to that gym
  # get through membership join metho 

  def gyms
    memberships.map { |membership| membership.name }
    # Membership.all.select { |gym| gym.lifter == self }
  end

#   - Get the combined lift total of every lifter has a membership to that gym
  # get through membership join method

  def lift_total_sum
    memberships.map { |membership| membership.lift_total }.sum
  end

end