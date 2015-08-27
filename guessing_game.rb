class Game
  def initialize
    @number = rand(100).to_i
  end

  def matches?(guess)
    @number == guess
  end

  def message(guess)
    if guess.nil?
      "What number am I thinking?"
    elsif guess > @number
      "Too high, guess lower!"
    elsif guess < @number
      "Too low, guess higher!"
    end
  end

  def play
    guess = nil

    5.times do
      break if matches?(guess)
      puts message(guess)
      guess = gets.chomp.to_i
    end

    if matches?(guess)
      puts "Correct! You WIN!"
    else
      puts "You LOSE :("
    end
  end
end

Game.new.play
