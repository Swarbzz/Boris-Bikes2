class DockingStation
  attr_reader :bike, :capacity

def initialize
  @capacity = 20
  @bike = []
end
  def release_bike
    Bike.new
    fail 'No bikes bitches!' unless @bike.count >= 1
    
  end

  def dock(bike)
    @bike.push(bike)
    fail 'Full' if @bike.count >= @capacity
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
