#practice creating a virtual permit
class Dragon
  def initialize name
    @name = name
    @asleep = false
    @food = 10 #he's full
    @poop = 0 #he doesn't have to go to the bathroom

    puts "#{name} is born!"
  end

  def feed
    puts 'You fed ' + @name + '!'
    @food = 10

    passTime
  end

  def walk
    puts 'You walked ' + @name + '.'
    @poop = 0 #drags poop when they walk

    passTime
  end

  def sleeps
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
  end

  def toss
    puts 'You tossed ' + @name + ' high into the air'
    passTime
  end

  def rock
    puts 'You rocked ' + @name + ' gently until he falls asleep'
    @asleep = true
    passTime
    if @asleep
      @asleep = false
      puts '...but wakes up when you stop'
    end
  end

  private #private means the methods defined are internal to the object

  def hungry?
    @food <= 2
  end

  def poopy?
    @poop >= 8
  end

  def passTime
    if @food > 0
      #move food from stomach to intestine
      @food -= 1
      @poop += 1
    else #our dragon is starving!
      if @asleep
        @asleep = false
        puts 'Wakes up suddenly, crying'
      end
      puts @name + ' was starving! In desparation he ate you!!!'
      exit
    end

    if @poop >= 10
      @poop = 10
      puts 'Whoops, ' + @name + ' just had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddently...'
      end
      puts @name + "'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'Wakes up suddenly...'
      end
      puts @name + ' does the potty dance!'
    end
  end
end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.sleeps
pet.rock
pet.walk
pet.walk
pet.walk
pet.feed
pet.rock
pet.sleeps
