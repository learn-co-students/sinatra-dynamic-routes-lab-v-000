require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @p = "#{params[:phrase]} "
    @p * @n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    if params[:operation] == "add"
      @total = @n1 + @n2
    elsif params[:operation] == "subtract"
      @total = @n1 - @n2
    elsif params[:operation] == "multiply"
      @total = @n1 * @n2
    elsif params[:operation] == "divide"
      @total = @n1 / @n2
    end

    "#{@total}"

  end

end
