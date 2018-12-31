# Code your solution here!
require 'pry'

def run_guessing_game

  puts "Guess a number between 1 and 6."

  input = gets.chomp

  if input.is_a? == Integer
    input = input.to_i
  end

  prng = Random.new  #prng => pseudo random number generator
  correct_answer = prng.rand(1..6)
  # binding.pry

  if input == 'exit'
    puts "Goodbye!"
    return
  elsif input != correct_answer
    # binding.pry
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
