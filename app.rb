require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    squared = @number.to_i**2
    squared.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = ""
    @number.times do
      @phrase << params[:phrase] + "\n"
    end
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@array.join(" ")}."
  end

  get "/:operation/:n1/:n2" do
    n1 = params[:n1].to_i
    n2 = params[:n2].to_i
    @answer = ''
    case params[:operation]
       when "subtract"
         @answer = n1 - n2
       when "add"
         @answer = n1 + n2
       when "multiply"
         @answer = n1 * n2
       when "divide"
         @answer = n1 / n2
    end
       erb :operation
  end
end
