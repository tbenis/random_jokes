class RandomJokes::Joke

=begin
    get programming_jokes
    get general_joke
    print single joke
    
    a joke should have an ID, type, setup (Wait 3 secs), punchline

=end
    def initialize(joke)
        puts joke.class
        puts "Hello #{joke}".blue
    end
   

end