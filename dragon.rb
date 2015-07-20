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
  	  puts "#{@name} looks very full!"
  	end

  	@hunger += 1
  end

  def walk
  	puts "You take #{@name} out for a walk."

  	if @poop >= 4
  	  puts "#{@name} takes a big poop!"
  	  @poop = 0
  	else
  	  puts "#{@name} drags you along."
  	end
  end

end

pet = Dragon.new('Bob')
pet.feed