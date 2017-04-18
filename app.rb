require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i

    result = ""
    @number.times {result << @phrase+"\n"}
    result
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/:operation/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @operation = params[:operation]
    case @operation
    when 'add'
      "#{@num1 + @num2}"
    when 'multiply'
      "#{@num1 * @num2}"
    when 'subtract'
      "#{@num1 - @num2}"
    when 'divide'
      "#{@num1 / @num2}"
    end

  end

end