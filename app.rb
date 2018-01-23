require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
      @n = params[:number].to_i
      @p = params[:phrase].to_s
      @s = []
      @n.times do @s << @p end
      "#{@s.join}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
     @n1 = params[:number1].to_i
     @n2 = params[:number2].to_i
     @op = params[:operation].to_s
     if @op == "add"
       "#{@n1 + @n2}"
     elsif @op == "subtract"
       "#{@n1 - @n2}"
    elsif @op == "multiply"
       "#{@n1 * @n2}"
     elsif @op == "divide"
       "#{@n1 / @n2}"
     end
  end
end
