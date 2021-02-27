class RandomJokes::CLI

    def call
        puts "Welcome to Random Jokes!"
    end

    # welcome_user
    #get_joke_type(type)
    #return_joke setup and punchline
    #ask_agan(type)
    #quit
    #error_message
    #line_of_demarcation

    types = ['general','programming','g','p']

    def welcome_user
        puts "
            ██████   █████  ███    ██ ██████   ██████  ███    ███          ██  ██████  ██   ██ ███████ ███████ 
            ██   ██ ██   ██ ████   ██ ██   ██ ██    ██ ████  ████          ██ ██    ██ ██  ██  ██      ██      
            ██████  ███████ ██ ██  ██ ██   ██ ██    ██ ██ ████ ██          ██ ██    ██ █████   █████   ███████ 
            ██   ██ ██   ██ ██  ██ ██ ██   ██ ██    ██ ██  ██  ██     ██   ██ ██    ██ ██  ██  ██           ██ 
            ██   ██ ██   ██ ██   ████ ██████   ██████  ██      ██      █████   ██████  ██   ██ ███████ ███████ 
            ".green
        puts "Welcome to your favorite library of Random Jokes."
        puts "Please pick a category from the following list:

        g = general
        p = programming
        "

    #    line_of_demarcation
    #    error_message
    #    String.colors
    end

    def error_message
        puts "Hmm Not sure what you mean by that. Please try again".red 
    end
    
    def line_of_demarcation
        puts "                                                                                                                          
        ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    ,  ,d88b.    , 
       '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  '    `Y88P'  
       ".yellow
    end

end

