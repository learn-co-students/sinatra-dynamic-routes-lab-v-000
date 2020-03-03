require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
     (params[:name]).reverse
  end

  get "/square/:number" do
    ((params[:number]).to_i** 2).to_s
  end

  get "/say/:number/:phrase" do

    s = " "
    ph =params[:phrase]
    (params[:number]).to_i.times do |i|
      print ph
       s << ph
    end
    s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   @w1 = params[:word1]
   @w2 = params[:word2]
   @w3 = params[:word3]
   @w4 = params[:word4]
   @w5 = params[:word5]
   erb :saywords
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation
  end


end
