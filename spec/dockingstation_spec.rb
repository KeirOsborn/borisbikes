require 'docking_station'

describe 'docking station' do

it 'holds a bike' do
 station = DockingStation.new([:bike])
 station.bikes.should == [:bike]
end

it 'holds bikes' do
 station = DockingStation.new([:bike1, :bike2])
 station.bikes.should == [:bike1, :bike2]
end

it 'rents a bike to a person' do

#test structure

 station = DockingStation.new([:bike])
 person = double :person 
 person.should_receive(:rent).with(:bike)
 
#test situations

 station.rent_bike_to(person)
 station.bikes.should == []
end

it 'can recieve bikes back from people' do
 
# test the stucture
 
 station = DockingStation.new([])
 person = double :person
 person.should_receive(:return).and_return(:bike)
 
# test the situations 

 station.receive_bike_from(person)
 station.bikes.should == [:bike]

end

it 'returns available bikes' do
 
 bike1 = double :bike1
 bike2 = double :bike2
 bike1.should_receive(:is_broken?).and_return(false)
 bike2.should_receive(:is_broken?).and_return(true)
 
 station = DockingStation.new([bike1, bike2])
 station.fixed_bikes.should eq [bike1]
end 

it 'should not rent a broken bike' do
 
 bike1 = double :bike1
 bike2 = double :bike2
 bike1.should_receive(:is_broken?).and_return(false)
 bike2.should_receive(:is_broken?).and_return(true)

 station = DockingStation.new([bike1, bike2])
 station.broken_bikes.should eq [bike2]
end		

it 'if dockingstation.number_of_bikes is 3 return 3' do
 station = DockingStation.new([:bike1, :bike2, :bike3])
 station.number_of_bikes.should eq 3
end

it 'if dockingstation.number_of_bikes is 2 return 2' do
 station = DockingStation.new([:bike1, :bike2])
 station.number_of_bikes.should eq 2
end

end
