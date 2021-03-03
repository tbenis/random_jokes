class RandomJokes::Joke

    def initialize(joke)
        # puts "#{joke}"
        @get_joke_type = joke["type"]
        @joke_setup = joke["setup"]
        @joke_punchline = joke["punchline"]
        print_joke
    end

    def print_joke
        puts @joke_setup
        sleep 3
        puts @joke_punchline
        sleep 3
    end

end
