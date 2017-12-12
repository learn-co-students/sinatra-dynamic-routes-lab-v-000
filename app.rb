require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared = @num * @num

    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @num.times do
      @string += @phrase + " "
    end
    "#{@string}"
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

    if @op == "add"
      @msg = @n1 + @n2
    elsif @op == "subtract"
      @msg = @n1 - @n2
    elsif @op == "divide"
      @msg = @n1 / @n2
    else
      @msg = @n1 * @n2
    end
    "#{@msg}"
  end

end
