require 'rails_helper'
describe Trip do
  describe 'instance methods' do
    it 'it can calculate total trail length' do
      trip1 = Trip.create(name: 'happy trip')

      hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
      hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
      hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

      expect(trip1.trip_length).to eq(6) 
    end
  end
end
