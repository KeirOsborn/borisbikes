require 'person'

describe 'person' do

it 'has no bike' do
 person = Person.new([])
 person.has_bike?.should eq false
end

it 'has a bike' do
 person = Person.new([:bike])
 person.has_bike?.should eq true
end

it 'can rent a bike from a dockingstation' do
 station = double :DockingStation
 station.should_receive(:rent).and_return(:bike)

 person = Person.new([])
 person.rent_from(station)
 person.has_bike?.should eq true
end

it 'can return a bike to a dockingstation' do
 station = double :DockingStation
 station.should_receive(:return).with(:bike)

 person = Person.new([:bike])
 person.return_to(station)
 person.has_bike?.should eq false

end 
 

end
