class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    Bike.new
  end

  def docking(bike)
    @docked_bikes.push(bike)
  end 
end 
