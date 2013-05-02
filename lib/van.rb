require_relative 'module_bikes'

class Van
 
 include BikeHolder
 alias :collected :bikes

 attr_reader :delivered, :assigned

 def initialize(bikes = [], delivered = [], assigned = [])
  @bikes = bikes
  @assigned = assigned
 end

 def collect(station)
  add_many station.broken_bikes
 end

 def assign_to?(station)
  @assigned.concat station

 end

end
