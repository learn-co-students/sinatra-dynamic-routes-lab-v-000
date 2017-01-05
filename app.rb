require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
   @user_name = params[:name]
  "#{@user_name}".reverse.split
 end

 get '/square/:number' do
    @number = params[:number]
   "#{@number.to_i ** 2}" #"These words are strings #{ Ruby code to be evaluated and then converted to string}"
 end

 get '/say/:number/:phrase' do
     @new_phrase = " "
     params[:number].to_i.times do |i|
     @new_phrase << params[:phrase] + "\n"
     @new_phrase
 end


 get '/say/:word1/:word2/:word3/:word4/:word5' do
   @concatenate = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
   #"#{@concatenate.concat}." creates a loop
 end

 get "/:operation/:number1/:number2" do
  @sum = params[:number1] + [:number2]
  "#{@sum}"
  #params[:number2] - [:number1]
  #params[:number1] * [:number2]
  #params[:number1] / [:number2]
 end
end
end
