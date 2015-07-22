require_relative 'dragon'

print "Name your new dragon: "
x = $stdin.gets.chomp
pet = Dragon.new x
puts
while x.downcase != 'If you break this loop you\'re stuck!!'
  print ">"
  x = $stdin.gets.chomp.downcase
  pet.play(x)
end
