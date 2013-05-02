require_relative 'module_bikes'

class DockingStation
 attr_reader :bikes

 include BikeHolder
  
 
 def initialize(bikes)
  @bikes = bikes
 end

 def rent_bike_to(person)
   person.bike = @bikes.pop
 end

 def receive_bike_from(person)
  add(person.return(:bike))
 end
end

