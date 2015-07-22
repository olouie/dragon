class Dragon

  def initialize(name)
  	@name = name
  	@hunger = 2
  	@poop = 2
  	@sleepy = false

    puts "#{@name} has hatched!"
  end

  def feed
  	puts "You fed #{@name} a piece of meat."

  	if @hunger < 4
  	  puts "#{@name} still looks kind of hungry."
  	else
  	  puts "#{@name} is very full!"
  	end

    @hunger += 2
    time_passing
  end

  def walk
  	puts "You take #{@name} out for a walk."

  	if @poop >= 3
  	  puts "#{@name} takes a big poop!"
  	  @poop = 0
  	else
  	  puts "#{@name} drags you along."
  	end

    x = rand(2)
    if x == 1
      @sleepy = true
    end

    time_passing
  end

  def bed
  	puts "You try to put #{@name} to bed."

  	if @sleepy == true && @hunger > 2
  	  puts "#{@name} falls asleep in bed."
  	  @sleepy = false

      if @poop >= 4
        puts "#{@name} pooped all over the bed while sleeping!"
        @poop = 0
      end

      print "\n#{@name} wakes up and is energetic."
  	else
  	  puts "#{@name} is not tired.\n#{@name} throws a tantrum!"
  	end

    time_passing
  end

  def time_passing
    @poop += 1
    @hunger -= 1

    if @hunger <= 2 && @hunger > 0
      puts "#{@name} stomach growls loudly."
    elsif @hunger == 0
      puts "Out of starvation #{@name} eats you!\nGame Over!"
      exit
    end

    if @poop >= 3
      puts "#{@name} jumps around frantically."
      
      if @poop >= 4
        
        x = rand(2)
        if x == 1
          puts "#{@name} poops all over the place!\n#{@name} looks very relieved."
          @poop = 0
        end
      end
    end

    if @sleepy == true
      puts "#{@name} looks tired and yawns."
    end

    puts
  end

  def play(input)
    x = input
    if x.include?('feed')
      feed
    elsif x.include?('walk')
      walk
    elsif x.include?('bed')
      bed
    else
      puts "You have to enter a command!"
  end
end

end