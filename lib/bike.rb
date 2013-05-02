class Bike
 
 def initialize(broken=false)
  @status = broken
 end

 def broken?
  @status
 end

 def fix
  @status = false
 end

end


