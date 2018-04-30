require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    params[:number].to_i.times do
      phrase << params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @operation == "add"
      "#{@n1 + @n2}"
    elsif @operation == "subtract"
      "#{@n1 - @n2}"
    elsif @operation == "multiply"
      "#{@n1 * @n2}"
    elsif @operation == "divide"
      "#{@n1 / @n2}"
    else
      "Invalid operation selected"
    end
  end

end
