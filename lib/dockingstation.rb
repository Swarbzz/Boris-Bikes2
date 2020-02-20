class DockingStation
  attr_reader :bike, :capacity
  @capacity = 1

  def release_bike
    fail 'No bikes bitches!' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Full' if @bike
    @bike = bike
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
