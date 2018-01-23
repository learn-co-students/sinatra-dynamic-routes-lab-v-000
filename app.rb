require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    total_phrase = ""
    @num.times do
      total_phrase += "#{@phrase}\n"
    end
    total_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    if @operation == 'add'
      "#{@num_1 + @num_2}"
    elsif @operation == 'subtract'
      "#{@num_1 - @num_2}"
    elsif @operation == 'multiply'
      "#{@num_1 * @num_2}"
    else
      "#{@num_1 / @num_2}"
    end
  end

end
