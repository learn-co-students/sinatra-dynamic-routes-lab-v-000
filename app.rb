require_relative 'config/environment'

class App < Sinatra::Base

 get "/reversename/:name" do
   @name = params[:name] 
   "#{@name}".reverse
 end
   
   get "/square/:number" do
    square_num = params[:number].to_i * params[:number].to_i
    "#{square_num}".to_s
  end

  get "/say/:number/:phrase" do
   @phrase = params[:phrase].to_s 
   @number = params[:number].to_i
   ("#{@phrase}\n") * @number
 end
   
   get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2] 
    word3 = params[:word3] 
    word4 = params[:word4] 
    word5 = params[:word5]
    sentence = "#{word1} #{word2} #{word3} #{word4} #{word5}"
    "#{sentence}.".to_s
  end
 
 get "/:operation/:number1/:number2" do
  
  @num_1 = params[:number1]
  @num_2 = params[:number2]
  @operation = "#{@num_1}".to_i + "#{@num_2}"
  #@operation = "#{@num_1}".to_i - "#{@num_2}".to_i
    "#{@operation}"
  end

end