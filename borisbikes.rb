require_relative 'docking_station.rb'

require_relative 'van.rb'

require_relative 'garage.rb'

require_relative 'person.rb'

require_relative 'bike.rb'

require_relative 'module_bikes.rb'



bike1 = Bike.new(false)
bike2 = Bike.new(false)
bike3 = Bike.new(false)
bike4 = Bike.new(true)

station1 = DockingStation.new([bike1, bike2])

keir = Person.new([])

garage = Garage.new([])

van = Van.new([],[],[])
