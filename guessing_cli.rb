# def exit_game
#   puts "Thanks for playing!"
# end
#
# def input_is_valid(input)
#   if input.to_i
#     if 1 <= input.to_i && input.to_i <= 10
#       return true
#     end
#   end
#   return false
# end
#
# def run_guessing_game
#   puts "Welcome to the guessing game!"
#   user_input = ""
#   until user_input == "exit"
#     randomly_generated_num = rand(1..10).round
#     puts "Guess a number between 1 and 10:"
#     user_input = gets.chomp
#     if user_input == "exit"
#       exit_game()
#     elsif input_is_valid(user_input)
#       user_input = user_input.to_i
#       if user_input == randomly_generated_num
#         puts "You guessed the correct number!"
#       else
#         puts "The computer guessed #{randomly_generated_num}"
#       end
#     else
#       puts "Invalid input; try again."
#     end
#   end
# end

def exit_game
  puts "Goodbye!"
end

def input_is_valid(input)
  if input.to_i
    if 1 <= input.to_i && input.to_i <= 6
      return true
    end
  end
  return false
end

def run_guessing_game
  user_input = ""
  until user_input == "exit"
    randomly_generated_num = rand(1..6).round
    puts "Guess a number between 1 and 6."
    user_input = gets.chomp
    if user_input == "exit"
      exit_game()
    elsif input_is_valid(user_input)
      user_input = user_input.to_i
      if user_input == randomly_generated_num
        puts "You guessed the correct number!"
      else
        puts "The computer guessed #{randomly_generated_num}."
      end
    else
      puts "Invalid input; try again."
    end
  end
end
