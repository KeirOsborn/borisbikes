module BikeHolder

  def stock(bikes)
    @bikes = bikes
  end

  def bikes
    @bikes
  end

  def number_of_bikes
    @bikes.size
  end

  def fixed_bikes
    @bikes.select {|bike| !bike.is_broken?}
  end

  def broken_bikes
    @bikes.select {|bike| bike.is_broken?}
  end

  def add(bike)
    @bikes << bike
  end

  def add_many(bikes)
    @bikes.concat bikes
  end

  def remove
    @bikes.shift
  end

  def deliver(other)
    other.add_many @bikes
    @bikes = []
  end
end
