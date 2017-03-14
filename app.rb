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

  get '/:operation/:number1/:number2' do
    @num_1 = params[:number1].to_f
    @num_2 = params[:number2].to_f
    @operator = params[:operation]
      case @operator
        when "add"
         "#{@num_1 + @num_2}"
        when "subtract"
         "#{@num_1 - @num_2}"
        when "multiply"
          "#{@num_1 * @num_2}"
        when "divide"
          "#{@num_1 / @num_2}"
        end
     end
end
