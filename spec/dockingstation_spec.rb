require 'dockingstation'

describe DockingStation do
  it { expect(DockingStation.new).to respond_to(:release_bike) }

  it "gets a bike" do
    expect(Bike.new).to be_working
  end

  it "docks bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "No bike available" do
    bike = Bike.new
    expect {expect(bike).to_not be_available}.to raise_error("No bikes bitches!")
  end
end
