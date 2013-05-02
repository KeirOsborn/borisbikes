require 'van'

describe 'van' do

let(:van) {Van.new}

it 'picks up broken bikes from station' do
 
 station1 = double :station1
 station1.should_receive(:broken_bikes).and_return([:bike])
 
 van.collect(station1)

end

it 'has bikes once collected from the station' do

 station = double :station
 station.should_receive(:broken_bikes).and_return([:bike])

 van.collect(station)
 van.collected.should eq [:bike]

end

it 'can collect from multiple stations' do
 station1 = double :station, broken_bikes: [:bike]
 station2 = double :station, broken_bikes: [:bike, :bike]
 
 van.collect(station1)
 van.collect(station2)

 van.collected.should eq [:bike, :bike, :bike]

end

it 'can deliver broken bikes to the garage' do
 garage = double :garage
 garage.should_receive(:add_many).with([:bike])

 van = Van.new([:bike])
 van.deliver(garage)
end

it 'has no broken bikes after delivering to the garage' do
 garage = double :garage, add_many: ''

 van = Van.new([:bike])
 van.deliver(garage)

 van.collected.should eq []

end

it 'should be able to have dockingstations assigned' do

 station1 = double :station
 
 van.assign_to?([station1]) 
 van.assigned.should eq [station1]
 
end

it 'should be able to have multiple dockingstations assigned' do

 station1 = double :station
 station2 = double :station
 
 van.assign_to?([station1])
 van.assign_to?([station2])

 van.assigned.should eq [station1, station2]

 
end

end
