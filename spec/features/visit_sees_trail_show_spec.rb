require 'rails_helper'

describe 'visitor visits trail show' do
  it 'can see trip name and length' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trail_path(hike1)

    expect(page).to have_content(trip1.name)
    expect(page).to have_content(Trail.total_hiking_distance)
    expect(page).to have_content(hike1.total_trips)
  end
end
