require 'dockingstation'

describe DockingStation do
  it { expect(DockingStation.new).to respond_to(:release_bike) }

  it "gets a bike" do
    expect(Bike.new).to be_working
  end

  it "docks bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike)
  end

  it "no bikes" do
      expect{subject.release_bike}.to raise_error("No bikes bitches!")
  end

  it "raises an error when dock is full" do
    subject.dock(Bike.new)
    expect { subject.dock Bike.new }.to raise_error 'Full'
  end
  # it "dock multiple bikes" do
  #     bike = Bike.new
  #     expect{subject.dock(bike)}.not_to raise_error
  # end
end
