class RandomJokes::API

    URL_GEN = "https://official-joke-api.appspot.com/random_joke"
    URL_PROG = "https://official-joke-api.appspot.com/jokes/programming/random"
    # @@url_gen_ten = "https://official-joke-api.appspot.com/random_ten"
    # @@url_prog_ten = "https://official-joke-api.appspot.com/jokes/programming/ten"

    def initialize(type_passed_in)
        @@url_type = nil
        self.class.check_type(type_passed_in)
        self.class.parse_json
    end

    def self.check_type(type)
        if type.downcase == 'g' || type.downcase == 'general'
            @@url_type = URL_GEN
        else
            @@url_type = URL_PROG
        end
       @@url_type
    end

    def self.get_response_body
        uri = URI.parse(@@url_type)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def self.parse_json
        parsed = JSON.parse(get_response_body)
        parsed_with_arr = parsed[0]
        if parsed.class == Array
            new_joke = RandomJokes::Joke.new(parsed_with_arr)
        else
            new_joke = RandomJokes::Joke.new(parsed)
        end
    end
end
