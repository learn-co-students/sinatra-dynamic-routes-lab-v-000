require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end


  get "/square/:number" do
    @number1= params[:num].to_i
    "#{@number1 * @number1}"
  end


  get "/say/:number/:pharse" do
  @number = params[:number]
  @phrase = params[:pharse]
    "#{@phrase} * @number"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1, @word2, @word3, @word4, @word5}"
  end

]

end
