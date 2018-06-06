require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase_1 = params[:phrase]
      @arr = []
        @count = 0
        while @count < @num.to_i do
          @arr << @phrase_1
          @count = @count + 1
        end
      @arr.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num_1 = params[:number1]
    @num_2 = params[:number2]

    if @op == "add"
      "#{@num_1.to_i + @num_2.to_i}"
    elsif @op == "subtract"
      "#{@num_1.to_i - @num_2.to_i}"
    elsif @op == "multiply"
      "#{@num_1.to_i * @num_2.to_i}"
    elsif @op == "divide"
      "#{@num_1.to_i / @num_2.to_i}"
    end

  end

end
