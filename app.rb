require_relative 'config/environment'

class App < Sinatra::Base

    get "/reversename/:name" do
        @name = params[:name]
        @name.reverse
    end

    get "/square/:number" do
        @num = params[:number]

        square = @num.to_i**2
        square.to_s

    end
    get "/say/:word1/:word2/:word3/:word4/:word5" do
        @n = 1
        words = params.select {|k,v|
            k.match(/word\d/)
            }

        @phrase = "#{words.values.join(" ")}."
        erb :say
    end

    get "/say/:number/:phrase" do
        @n = params[:number].to_i
        @phrase = params[:phrase]
        erb :say
    end

    get "/:operation/:n1/:n2" do
        n1 = params[:n1].to_i
        n2 = params[:n2].to_i
        @ans = ''
        case params[:operation]
            when "subtract"
            @ans = n1 - n2 
            when "add"
            @ans = n1 + n2
            when "multiply"
            @ans = n1 * n2
            when "divide"
            @ans = n1 / n2
        end
        
        erb :operation
    end

end