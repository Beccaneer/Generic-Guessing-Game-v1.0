# Generic Guessing Game v1.0
# Coded by Rebecca Thomson
# Dedicated to Bhavya <3


$stdout.sync = true

$low=0
$high=1000


def guessing()
print "Make your guess (int #{$low}-#{$high}): "
$guess = gets.to_i
  if $guess<$low || $guess>$high
    puts "That isn't in the right range!  Guess again"
    guessing
  elsif $target == $guess 
    print "Congrats! YOU WIN!!!!!"
  elsif $guess < $target
    $low = $guess
    puts "You are tooooooo low, guess again!"
    guessing
  else
    $high = $guess 
    puts "You are way way too high! guess again!"
    guessing
  end
end

$target = rand(1000)
guessing

