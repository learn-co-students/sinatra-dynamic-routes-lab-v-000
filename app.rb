require_relative 'config/environment'

class App < Sinatra::Base
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @code = params[:phrase]
    @phrase = URI.decode(@code)
    #
    spacer = ""
     @number.times do
     spacer += "#{@phrase}\n"
     end
     spacer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == "add"
      "#{@number1 + @number2}"
    elsif params[:operation] == "subtract"
      "#{@number1 - @number2}"
    elsif params[:operation] == "multiply"
      "#{@number1 * @number2}"
    elsif params[:operation] == "divide"
      "#{@number1 / @number2}"
    end
  end

end
