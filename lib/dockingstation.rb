class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  def full?
    true
    raise "Full" if true
  end

  def available?
    false
    raise "No bikes bitches!" if true
  end

end

class Bike

  def working?
    true
  end

  def docked?
    true
  end
end