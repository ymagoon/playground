class OrangeTree
  def initialize
    @height = 0 #cm
    @age = 0    #years
    @alive = true
    @oranges = 0
  end

  def height
    puts 'The tree is ' + @height.to_s + ' cm heigh.'
  end

  def age
    puts 'The tree is ' + @age.to_s + ' years old.'
  end

  def pick orange
    if @oranges > 0 && @oranges > orange
      puts orange.to_s + ' oranges picked! How delicious'
      @oranges -= orange
    elsif
      orange > @oranges
      puts 'Only ' + @oranges.to_s + ' oranges were able to be picked.'
      @oranges = 0
    else
      puts 'There are no more oranges to pick this season...'
    end
  end

  def countOranges
    puts 'There are ' + @oranges.to_s + ' oranges on the tree.'
  end

  def oneYear
    if alive?
      @age += 1
      @height += 30
      puts 'One year has passed...'
    else
      puts 'The great orange tree has finally fallen...'
      exit
    end

    if produce_oranges?
      @oranges = @age * 5
    end
  end

  private
    def produce_oranges?
      if @age >= 5
        true
      else
        false
      end
    end

    def alive?
      if @age >= 30
        @alive = false
      end

      @alive
    end
end

fruit = OrangeTree.new

fruit.oneYear
fruit.countOranges
fruit.oneYear
fruit.oneYear
fruit.height
fruit.age
fruit.oneYear
fruit.oneYear
fruit.age
fruit.countOranges
fruit.oneYear
fruit.age
fruit.countOranges
fruit.pick 10
fruit.countOranges
fruit.oneYear

10.times { |num| fruit.oneYear }

fruit.age

10.times { |num| fruit.oneYear }

fruit.countOranges
fruit.pick 50
fruit.pick 100
fruit.countOranges
fruit.pick 1

fruit.oneYear
fruit.oneYear
fruit.oneYear
fruit.age
fruit.height
fruit.oneYear
