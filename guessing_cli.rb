# Code your solution here!
require 'pry'

def get_integer
  integer_string = "1"
  integer_strings = []

  6.times do
    integer_strings << integer_string
    integer_string = (integer_string.to_i + 1).to_s
  end

  puts "Guess a number between 1 and 6."

  num = gets.chomp

  if integer_strings.any? { |el| el == num}
    num = num.to_i
  end
  num
end

def run_guessing_game

  

  prng = Random.new  #prng => pseudo random number generator
  correct_answer = prng.rand(1..6)
  binding.pry

  if input == 'exit'
    puts "Goodbye!"
    return
  elsif input != correct_answer
    binding.pry
    puts "The computer guessed #{correct_answer}."
    run_guessing_game
  elsif input == correct_answer
  puts "You guessed the correct number!"
  run_guessing_game
  else
    run_guessing_game
  end

end

run_guessing_game
