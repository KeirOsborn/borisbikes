require_relative '../lib/garage'

describe 'garage' do

it 'will have vans' do
 van = double :van 
 
 garage = Garage.new([:van1,:van2])
 garage.vans.should eq([:van1, :van2])

end

it 'can fix bikes' do

 bike = double :bike
 bike.should_receive(:fix)
 
 garage = Garage.new(bike)
 garage.fix_bikes

 bike.status.should eq false

end


end
