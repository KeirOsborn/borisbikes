require_relative 'module_bikes'

class Garage
 
 include BikeHolder

 def initialize(bikes = [])
 @bikes = bikes
 end

 def fix_bikes
  @bikes.fix
 end

end
