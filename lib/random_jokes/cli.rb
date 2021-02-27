class RandomJokes::CLI

    def call
        puts "Welcome to Random Jokes!"
        welcome_user
        get_joke_type
    end  

    # welcome_user
    #get_joke_type(type)
    #return_joke setup and punchline
    #ask_agan(type)
    #quit
    #error_message
    #line_of_demarcation

    

    def welcome_user
        puts "\n
            ██████   █████  ███    ██ ██████   ██████  ███    ███          ██  ██████  ██   ██ ███████ ███████ 
            ██   ██ ██   ██ ████   ██ ██   ██ ██    ██ ████  ████          ██ ██    ██ ██  ██  ██      ██      
            ██████  ███████ ██ ██  ██ ██   ██ ██    ██ ██ ████ ██          ██ ██    ██ █████   █████   ███████ 
            ██   ██ ██   ██ ██  ██ ██ ██   ██ ██    ██ ██  ██  ██     ██   ██ ██    ██ ██  ██  ██           ██ 
            ██   ██ ██   ██ ██   ████ ██████   ██████  ██      ██      █████   ██████  ██   ██ ███████ ███████ 
            
                                Welcome to your favorite library of Random Jokes.
            \n".green

    #    line_of_demarcation
    #    error_message
    #    String.colors
    end

    def types
        @types = ['general','programming','g','p']
    end
    def yes
        @yes = ["yes","y"]
    end
    def no
        @no = ["no", "n", "exit", "e"]
    end

    def get_joke_type

        puts "Please pick a category from the following list:

        g = general
        p = programming

        *Type exit or 'e' at anytime to quit
        "
        type = gets.strip
        if types.include?(type.downcase)
            puts "yes".blue
            RandomJokes::API.parse_json
            line_of_demarcation
            try_again?
        elsif type == 'exit' || type == 'e'
            exit_app
         else 
            error_message(type)
         end
    end

    def iterator(arr)
        arr.each do |x|
            x
        end
    end

    def try_again?
        puts "Would you like to try again?
                y = yes
                n = no
        "
        y_or_n = gets.strip
        if yes.include?(y_or_n.downcase)
            get_joke_type
        elsif no.include?(y_or_n.downcase)
            exit_app
        else
            error_message
        end

    end

    def exit_app
        puts "
        
        ████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗██╗
        ╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║██║
           ██║   ███████║███████║██╔██╗ ██║█████╔╝      ╚████╔╝ ██║   ██║██║   ██║██║
           ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗       ╚██╔╝  ██║   ██║██║   ██║╚═╝
           ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗       ██║   ╚██████╔╝╚██████╔╝██╗
           ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚═╝
                                                                             

        "
        return
    end

    def error_message(the_error="")
        messages = ["Hmm Not sure what you mean by <#{the_error}>. Please try again", "Really? LOL", "Oops! Try again", "Oh no. I think you broke it", "We don't have all day.", "OMG! <#{the_error}> is not a valid input. Please try again"]
        puts "Error: #{messages[rand(0..messages.length-1)]}".red 
        get_joke_type
    end
    
    def line_of_demarcation
        puts "                                                                                                                          
        ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    , 
       '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  
       ".yellow
    end

end

