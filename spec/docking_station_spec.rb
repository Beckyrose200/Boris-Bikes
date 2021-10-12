
require 'dockingstation'

describe DockingStation do 
  it "will recognise release bike" do
    docking_station = DockingStation.new
    actual = docking_station.respond_to?(:release_bike)
    expected = true
    expect(actual).to(eq(expected))
  end
end



# expect( This_is_what_we_test_for ).to eq What_we_compare_to
# Add a test to your spec file that expects DockingStation instances to respond_to the method release_bike
# Rewrite this test using RSpec's one-liner syntax