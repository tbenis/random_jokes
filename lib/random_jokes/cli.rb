class RandomJokes::CLI

    def call
        welcome_user
        get_joke_type
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
        ".blue
        type = gets.strip

        if types.include?(type.downcase)
            joke = RandomJokes::API.new(type)
            # RandomJokes::API.parse_json
            line_of_demarcation
            try_again?
        elsif type == 'exit' || type == 'e'
            exit_app
         else 
            error_message(type)
            get_joke_type
         end
    end

    def try_again?
        puts "Would you like to see another joke?
                y = yes
                n = no
        ".blue
        y_or_n = gets.strip
        if yes.include?(y_or_n.downcase)
            line_of_demarcation
            get_joke_type
        elsif no.include?(y_or_n.downcase)
            exit_app
        else
            error_message
            try_again?
        end

    end

    def error_message(the_error="")
        messages = ["Hmm Not sure what you mean by <#{the_error}>. Please try again", "Really? LOL", "Oops! Try again", "Oh no. I think you broke it", "We don't have all day.", "OMG! <#{the_error}> is not a valid input. Please try again"]
        puts "Error: #{messages[rand(0..messages.length-1)]}".red 
    end
    
    def line_of_demarcation
        puts "                                                                                                                          
        ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    , 
       '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  
       ".green
    end

    def welcome_user
        puts "\n
            ██████   █████  ███    ██ ██████   ██████  ███    ███          ██  ██████  ██   ██ ███████ ███████ 
            ██   ██ ██   ██ ████   ██ ██   ██ ██    ██ ████  ████          ██ ██    ██ ██  ██  ██      ██      
            ██████  ███████ ██ ██  ██ ██   ██ ██    ██ ██ ████ ██          ██ ██    ██ █████   █████   ███████ 
            ██   ██ ██   ██ ██  ██ ██ ██   ██ ██    ██ ██  ██  ██     ██   ██ ██    ██ ██  ██  ██           ██ 
            ██   ██ ██   ██ ██   ████ ██████   ██████  ██      ██      █████   ██████  ██   ██ ███████ ███████ 
            
                                Welcome to your favorite library of Random Jokes.
            \n".green
    end

    def exit_app
        puts "
        
        ████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗██╗
        ╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║██║
           ██║   ███████║███████║██╔██╗ ██║█████╔╝      ╚████╔╝ ██║   ██║██║   ██║██║
           ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗       ╚██╔╝  ██║   ██║██║   ██║╚═╝
           ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗       ██║   ╚██████╔╝╚██████╔╝██╗
           ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚═╝
                                                                             

        ".green
        return
    end
   
end

