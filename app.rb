require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    (@number ** 2).to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num
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
    @operation = params[:operation]
    @n1 = params[:number1].to_1
    @n2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@n1 + @n2}"
    when "subtract"
      "#{@n1 - @n2}"
    when "multiply"
      "#{@n1 * @n2}"
    when "divide"
      "@n1 / @n2"
    end
  end

end
