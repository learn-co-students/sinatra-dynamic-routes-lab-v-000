require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @op == 'add'
      "#{@n1 + @n2}"
    elsif @op == 'subtract'
      "#{@n1 - @n2}"
    elsif @op == 'multiply'
      "#{@n1 * @n2}"
    else @op == 'divide'
      "#{@n1 / @n2}"
    end
  end


end
