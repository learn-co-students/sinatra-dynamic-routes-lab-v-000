require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    squared = @number**2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    five_times = @phrase * @number
    "#{five_times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    sentence = [@word1, @word2, @word3, @word4, @word5].join(" ")
    sentence += "."
  end

  get '/:operation/:x/:y' do
    @operation = params[:operation]
    @x = params[:x].to_i
    @y = params[:y].to_i

    if @operation == "add"
      "#{@x + @y}"

    elsif @operation == "multiply"
      "#{@x * @y}"

    elsif @operation == "divide"
      "#{@x/@y}"

    else
      "#{@x - @y}"
    end

  end



end
