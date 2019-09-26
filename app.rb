require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
     @user_name = params[:name].reverse
  #   #binding.pry
  # "#{@username}"
    erb :reversename
  end

  get '/square/:number' do
    @num = params[:number].to_i
    #binding.pry
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @words = params["phrase"]
    #binding.pry
    #{}"#{@num.times do print @words end}"
    #binding.pry
    # erb :say
    "#{@words*@num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params.values.join(" ")
    #inding.pry
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @op_str = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    vals = {"add" => :+ , "subtract" => :-, "divide" => :/, "multiply" => :*}
    @operator = vals[@op_str]
    "#{@num1.send(@operator,@num2)}"
    #1.send(add,1)
    #binding.pry
  end
end
