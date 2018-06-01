require 'rails_helper'
describe 'visitor visits trip show page' do
  it 'can see a list of trails on that trip and their attributes' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trip_path(trip1)


    expect(page).to have_content(hike1.name)
    expect(page).to have_content(hike1.address)
    expect(page).to have_content(hike1.length)
    expect(page).to have_content(hike2.name)
    expect(page).to have_content(hike2.address)
    expect(page).to have_content(hike2.length)
    expect(page).to have_content(hike3.name)
    expect(page).to have_content(hike3.address)
    expect(page).to have_content(hike3.length)
  end

  it 'can see total hiking distance' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trip_path(trip1)

    expect(page).to have_content("Total Hiking Distance: #{Trail.total_hiking_distance}")
  end

  it 'can see average hiking distance' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trip_path(trip1)

    expect(page).to have_content("Average Hiking Distance: #{Trail.average_hiking_distance}")
  end

  it 'can see longest hiking distance' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trip_path(trip1)

    expect(page).to have_content("Longest Hiking Distance: #{Trail.longest_hiking_distance}")
  end

  it 'can see shortest hiking distance' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trip_path(trip1)

    expect(page).to have_content("Shortest Hiking Distance: #{Trail.shortest_hiking_distance}")
  end

  it 'can link to a trail page' do
    trip1 = Trip.create(name: 'happy trip')

    hike1 = trip1.trails.create(name:'one', address:'123', length: 1)
    hike2 = trip1.trails.create(name:'two', address:'124', length: 2)
    hike3 = trip1.trails.create(name:'three', address:'125', length: 3)

    visit trip_path(trip1)

    click_on "#{hike1.name}"

    expect(current_path).to eq(trail_path(hike1))
  end
end
