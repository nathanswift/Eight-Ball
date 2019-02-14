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
#function to add answer
#store the answers so that you can push them into answers array

class EightBall
    
    def initialize
        menu
    end

    def menu
        puts "Welcome to the Eight Ball"
        puts "-" * 50
        puts "1.) Ask the Eight Ball a question"
        puts "2.) Exit"
        user_selection
    end

    def user_selection
        choice = gets.to_i
        case choice
        when 1
            askQuestion
        when 2
            exit_program
        else
            "Invalid Choice"
            menu
        end
    end

    def askQuestion
        @answers = ["Yes", "No", "Probably", "Not looking so hot"]
        puts "What is your question"
        input = gets.strip
        answers = @answers.sample
        puts answers
        sleep 2
        menu
    end

    def exit_program
        puts "Type exit to leave the program"
        response = gets.to_i.downcase
        if response == "exit"
            exit
        else
            "invalid choice"
            menu
        end
    end
end

eight = EightBall.new

