require 'rails_helper'
describe 'vistor vists hiking trips index' do
  it 'sees a list of all hiking trip names' do
    trip1 = Trip.create(name: 'happy trip')
    trip2 = Trip.create(name: 'sad trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'one', address:'124', length: 2)
    hike3 = trip2.trails.create(name:'one', address:'125', length: 3)

    visit trips_path

    expect(page).to have_content(trip1.name)
    expect(page).to have_content(trip2.name)
  end

  it 'can link to a trip show page' do
    trip1 = Trip.create(name: 'happy trip')
    trip2 = Trip.create(name: 'sad trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'one', address:'124', length: 2)
    hike3 = trip2.trails.create(name:'one', address:'125', length: 3)

    visit trips_path

    click_on "#{trip1.name}"

    expect(current_path).to eq(trip_path(trip1))
  end
end
