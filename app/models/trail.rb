class Trail < ApplicationRecord
  has_many :hiking_trips
  has_many :trips, through: :hiking_trips

  def self.total_hiking_distance
    sum(:length)
  end

  def self.average_hiking_distance
    average(:length)
  end

  def self.longest_hiking_distance
    maximum(:length)
  end

  def self.shortest_hiking_distance
    minimum(:length)
  end

  def total_trips
    trips.count
  end
end
