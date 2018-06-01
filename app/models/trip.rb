class Trip < ApplicationRecord
  has_many :hiking_trips
  has_many :trails, through: :hiking_trips

  def trip_length
    trails.sum(:length)
  end
end
