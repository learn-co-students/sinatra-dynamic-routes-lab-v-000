require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do

    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i**2

    "#{@number.to_s
    }"

  end

  get "/say/:number/:phrase" do

  @number = params[:number].to_i
  @phrase = params[:phrase]
  @return = ""


  "#{until @number == 0
  @return += @phrase + "\n"
  @number -= 1 end
    @return}"

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    "#{word1} #{word2} #{word3} #{word4} #{word5}."

  end

  get "/:operation/:number1/:number2" do


    "parms[:number1].to_i.send(params[:operation], params[:number2].to_i)"

    #{}"#{answer}"
  end


end
