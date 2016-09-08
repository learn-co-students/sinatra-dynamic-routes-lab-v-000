require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    "Hi #{@reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@number} squared is #{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s + "\n"
    "#{@phrase*@num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1}" + " #{@word2}"+ " #{@word3}" + " #{@word4}" + " #{@word5}."
  end


  get '/:operation/:first/:second' do
    @operation = params[:operation]
    @first = params[:first].to_i
    @second = params[:second].to_i
    case @operation
    when "add"
      @added = @first + @second
      "#{added}"
    when "subtract"
      @subtracted = @first - @second
      "#{@subtracted}"
    when "multiply"
      @multiplied = @first * @second
      "#{@multiplied}"
    when "divide"
      @divided = @first/@second
      "#{@divided}"
    end
  end

end
