require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
  end

  get '/square/:number' do
    @square_number = params[:number].to_i
    "#{@square_number * @square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []

    @number.times do
      @phrase_array << @phrase
    end
    @phrase_array.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    @operation_symbol = '+' if @operation == 'add'
    @operation_symbol = '-' if @operation == 'subtract'
    @operation_symbol = '*' if @operation == 'multiply'
    @operation_symbol = '/' if @operation == 'divide'

    "#{@number1.send(@operation_symbol, @number2)}"
    #if @operation == 'add'
      #"#{@number1 + @number2}"
    #elsif @operation == 'subtract'
      #"#{@number1 - @number2}"
    #elsif @operation == 'multiply'
      #"#{@number1 * @number2}"
    #else @operation == 'divide'
      #"#{@number1 / @number2}"
    #end
  end
end
