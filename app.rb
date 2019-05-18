require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse.to_s}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    str = ""

    @num.times do
      str += "#{@phrase} "
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    if @op == "add"
      result = @n1 + @n2
    elsif @op == "subtract"
      result = @n2 - @n1
    elsif @op == "multiply"
      result = @n1 * @n2
    elsif @op == "divide"
      result = @n1/@n2
    end

      "#{result}"
  end
end
