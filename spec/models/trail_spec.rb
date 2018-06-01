require 'rails_helper'

describe Trail do
  describe 'class methods' do
    it 'can calculate total hiking distance' do
      trip1 = Trip.create(name: 'happy trip')
      hike1 = trip1.trails.create!(name:'one', address:'123', length: 1)
      hike2 = trip1.trails.create!(name:'two', address:'124', length: 2)
      hike3 = trip1.trails.create!(name:'three', address:'125', length: 3)

      total = 6

      expect(Trail.total_hiking_distance).to eq(total)
    end

    it 'can calculate average hiking distance' do
      trip1 = Trip.create(name: 'happy trip')
      hike1 = trip1.trails.create!(name:'one', address:'123', length: 1)
      hike2 = trip1.trails.create!(name:'two', address:'124', length: 2)
      hike3 = trip1.trails.create!(name:'three', address:'125', length: 3)

      average = 2

      expect(Trail.average_hiking_distance).to eq(average)
    end

    it 'can calculate longest hiking distance' do
      trip1 = Trip.create(name: 'happy trip')
      hike1 = trip1.trails.create!(name:'one', address:'123', length: 1)
      hike2 = trip1.trails.create!(name:'two', address:'124', length: 2)
      hike3 = trip1.trails.create!(name:'three', address:'125', length: 3)

      longest = 3

      expect(Trail.longest_hiking_distance).to eq(longest)
    end

    it 'can calculate shortest hiking distance' do
      trip1 = Trip.create(name: 'happy trip')
      hike1 = trip1.trails.create!(name:'one', address:'123', length: 1)
      hike2 = trip1.trails.create!(name:'two', address:'124', length: 2)
      hike3 = trip1.trails.create!(name:'three', address:'125', length: 3)

      shortest = 1

      expect(Trail.shortest_hiking_distance).to eq(shortest)
    end
  end
end
