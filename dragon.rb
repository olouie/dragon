class Dragon

  def initialize(name)
  	@name = name
  	@hunger = 2
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

  def play()

  end

end

pet = Dragon.new('Bob')
pet.feed