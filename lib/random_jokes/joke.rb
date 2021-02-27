class RandomJokes::Joke

=begin
    get programming_jokes
    get general_joke
    print single joke
    
    a joke should have an ID, type, setup (Wait 3 secs), punchline

=end
    def initialize(joke)
        @get_joke_type = joke["type"]
        @joke_setup = joke["setup"]
        @joke_punchline = joke["punchline"]
        # puts "Hello #{joke}".blue
        print_joke
    end

    def print_joke

        puts @joke_setup
        sleep 3
        puts @joke_punchline
        sleep 3
    end

end