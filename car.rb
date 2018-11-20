class Car

  @@default_colour = 'blue'
  @@cars_made = 0



  def initialize(colour, owner)
    @owner = owner
    @mileage = 0
    @colour = @@default_colour
    @broken = false
    @@cars_made += 1
  end

def self.cars_made
  return @@cars_made
end

  def self-default_colour=(default_colour)
    @@default_colour = default_colour
  end

  def colour
    @colour
  end

  def colour=(colour)
    @colour = colour
  end

  def drive(distance)
    if !@broken
    @mileage += distance
    end
  end


  def crash(other_car)
    @broken = true
    if other_car != nil
      other_car.crash(nil)
    end
  end
end
