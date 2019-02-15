# User inputs question
# Computer outputs random answer
# User inputs "QUIT"
# Computer outputs a goodbye message and exits
# Ability to add more answers:
# Via easter egg question ("add_answers")
# Do not let them add the same answer if the eight ball already has that answer
# Ability to reset answers back to the original bank (hint: think arr.clone)
# Via easter egg question ("reset_answers")
# Ability to have eight ball print all answers
# Via easter egg question ("print_answers")
 

# Bonus Objectives:

# Create a menu to handle all the functionality.
# Use classes to handle the Eight Ball Program and Answers.
# Use the colorize gem (from lecture) to add some color to your application.

# Magic Eight Ball App
# Make a menu
# Ask a question - User input
# Return an answer

#bonus
#add answer to the array
#store the answers so that you can push them into answers array
require "colorize"
require "pry"

class EightBall
    
    def initialize
        @answers = ["Yes", "No", "Probably", "Not looking so hot"]
        @new_answers = @answers.clone
        menu
    end

    def menu
        puts 
        puts "            ~ Welcome to the Eight Ball ~".colorize(:cyan)
        puts "-" * 50
        puts
        puts "1.) Ask the Eight Ball a question".colorize(:cyan)
        puts "2.) Add your own answers".colorize(:cyan)
        puts "3.) View available answers".colorize(:cyan)
        puts "4.) Reset answers".colorize(:cyan)
        puts "5.) Exit".colorize(:cyan)
        puts
        puts "-" * 50
        user_selection
    end

    def user_selection
        choice = gets.to_i
        case choice
        when 1
            ask_question
        when 2
            add_answer
        when 3
            view_answers
        when 4 
            reset_answers
        when 5
            exit_program
        else
            "Invalid Choice"
            menu
        end
    end

    def ask_question
        puts "-" * 50
        puts "What is your question?".colorize(:cyan)
        puts
        input = gets.strip
        answers = "🎱  > #{@new_answers.sample.colorize(:green)}"
        puts
        puts answers
        puts
        puts "-" * 50
        sleep 2
        menu
    end

    def exit_program
        puts "Type exit to leave the program".colorize(:red)
        response = gets.strip.downcase
        if response == "exit"
            puts "Thanks Goodbye!".colorize(:red)
            sleep 2
            exit
        else
            "Invalid choice".colorize(:red)
            menu
        end
    end

    def add_answer 
        puts "-" * 50
        puts "Add an answer to the Eight Ball".colorize(:cyan)
        puts
        @new_answers << gets.strip
        menu
    end

    def view_answers
        puts "-" * 50
        puts @new_answers
        puts
        sleep 3
        menu
    end

    def reset_answers
        @new_answers = @answer
        puts "Your answers have been reset"
        puts
        sleep 3
        menu
    end
end

eight = EightBall.new

