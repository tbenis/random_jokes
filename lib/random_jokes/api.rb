class RandomJokes::API

    @@url_gen = "https://official-joke-api.appspot.com/random_joke"
    @@url_prog = "https://official-joke-api.appspot.com/jokes/programming/random"

    @@url_gen_ten = "https://official-joke-api.appspot.com/random_ten"
    @@url_prog_ten = "https://official-joke-api.appspot.com/jokes/programming/ten"

    def self.get_response_body
        uri = URI.parse(@@url_gen)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def self.parse_json
        parsed = JSON.parse(get_response_body)
        new_joke = RandomJokes::Joke.new(parsed)
    end
end
