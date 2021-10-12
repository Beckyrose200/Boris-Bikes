
require 'dockingstation'
require 'bike'

describe DockingStation do 

  it "will recognise release bike" do
    docking_station = DockingStation.new
    actual = docking_station.respond_to?(:release_bike)
    expected = true
    expect(actual).to(eq(expected))
  end

  it "returns a bike, when release_bike is called" do

    docking_station = DockingStation.new
    expected = Bike
    actual = (docking_station.release_bike).class
    expect(actual).to be expected 

  end

  it "returns a bike, which is working" do
    
    docking_station = DockingStation.new
    new_bike = docking_station.release_bike
    actual = new_bike.working?
    expected = true
    expect(actual).to be expected

  end

  it "adds a bike to the docking station" do
    docking_station = DockingStation.new
    new_bike = Bike.new
    docking_station.docking(new_bike)
    expect(docking_station.docked_bikes.empty?).to eq false

  end
  
  it 'checked if there is a bike docked' do
    docking_station = DockingStation.new
    new_bike = Bike.new
    docking_station.docking(new_bike)
    expect(docking_station.docked_bikes[0]).to be new_bike
  end 

end



#  Use an instance variable with attr_reader to do a full test-implementation cycle for the second User Story above
# As a member of the public
# So I can decide whether to use the docking station
# I want to see a bike that has been docked