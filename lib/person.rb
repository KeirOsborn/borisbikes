class Person

def initialize(bike)
 @bike = bike
end

def has_bike?
 @bike.any?
end

def rent_from(station)
 station.rent_bike_to(self)
end

def bike=(bike)
  @bike = bike
end

def return_to(station)
 @bike = [] 
end

end
