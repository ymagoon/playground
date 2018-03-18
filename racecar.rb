class Car
  def initialize
    @speed = 0 #how fast the car is going at any given time; in mph
    @acceleration = 45 #controls how FAST the car speeds up; in mph
    @direction = 90 #in degrees. Right turn between 0 and 90, left between 90 and 180.
    @max_speed = 180 #in mph
    @color = "blue"
    @make = nil
    @model = nil

    @gas_mileage = 25 #in mph
    @tank_size = 20 #in gallons
    @gas = 20 #gallons in the car

    @headlights = false
  end

  def drive
  end

  def accelerate(time) #time in seconds
    @speed += (time * @acceleration).floor
    puts "You accelerated for #{time} seconds, so you are now going #{@speed} mph"
  end

  def speed?
    puts "You are driving #{@speed} mph"
  end

  def reverse
    if @speed > 0
      puts "If you throw the car into reverse while driving you'll break the transmission!"
    end
  end

  def honk
    puts "BEEP! BEEP! BEEP!"
  end

  def turn_right
  end

  def turn_left
  end

  def brake #slows car, will stop it if brake is long enough
  end

  def stop #stops car
  end

  def headlights_on
    if @headlights
      puts "headlights are already on!"
    else
      @headlights = true
      puts "headlights have been turned on. Drive safely!"
    end
  end

  def headlights_off
    if !@headlights_off
      puts "headlights are already off!"
    else
      @headlights = false
      puts "headlights have been turned off."
    end
  end

  def paint(color) #change color of car
    @color = color
    puts "your car is now #{color}"
  end

  def color?
    puts "Your car is #{@color}"
  end

  def fill(gallons) #fill gas tank
    puts @gas += gallons
    if @gas + gallons > @tank_size
      @gas = @tank_size
      puts "Your gas tank is now full."
    else
      @gas += gallons
      puts "You now have #{@gas} gallons of gas"
    end
  end

  def gas_left?
    puts "You now have #{@gas} gallons of gas left"
  end

  private
    def fts(value)
      return (value/3600.0) * 5280 #mph to fts
    end
end

def test
end

puts method(:test)

roddy = Car.new

roddy.fill(10)
roddy.gas_left?
roddy.honk
roddy.speed?
roddy.color?

roddy.headlights_off
roddy.headlights_on
roddy.accelerate(2.432)
roddy.speed?
#puts (100/3600.0) * 5280
