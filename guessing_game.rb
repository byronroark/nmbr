guess = 0
tries = 0

number = rand(100).to_i
puts "What number am I thinking?"
guess = gets.chomp.to_i

while (true)
  if guess != number
    tries += 1
  end

  if guess == number
    puts "Correct! You WIN!"
    break

  elsif guess > number
    puts "Too high, guess lower!"
    guess = gets.chomp.to_i

  else guess < number
    puts "Too low, guess higher!"
    guess = gets.chomp.to_i
  end
end
