require_relative '../lib/bike'

describe 'bike' do

it 'bikes should by default be healthy' do
 chopper = Bike.new
 chopper.broken?.should eq false
end

it 'should be able to be be either broken or healthy' do
 chopper = Bike.new(true)
 chopper.broken?.should eq true
end

it 'should be able to be fixed' do
 chopper = Bike.new(true)
 chopper.fix
 chopper.broken?.should eq false
end

end
