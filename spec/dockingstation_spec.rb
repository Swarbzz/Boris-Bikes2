require 'dockingstation'

describe "DockingStation" do
  it { expect(DockingStation.new).to respond_to(:release_bike) }
end

describe "bike" do
  it "gets a bike" do
    bike = Bike.new
    expect(bike).to be_working 
  end
end