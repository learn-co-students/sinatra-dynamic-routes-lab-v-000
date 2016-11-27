require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num **2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1, @w2, @w3, @w4, @w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    [@w1, @w2, @w3, @w4, @w5].join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @n1, @n2 = params[:number1].to_i, params[:number2].to_i
    @op = params[:operation]
     if @op == "add"
       "#{@n1 + @n2}"
     elsif @op == "subtract"
       "#{@n1 - @n2}"
     elsif @op == "multiply"
         "#{@n1 * @n2}"
      else @op == "divide"
        "#{@n1 / @n2}"
      end
  end

end
