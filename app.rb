require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name= params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @num= params[:number].to_i
    @sq = @num * @num
    @sq.to_s
  end
  
  get '/say/:number/:phrase' do
    @num= params[:number].to_i
    @phrase= params[:phrase]
    @new_p = ""
    @num.times {@new_p << @phrase}
    @new_p
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1= params[:word1]
    @w2= params[:word2]
    @w3= params[:word3]
    @w4= params[:word4]
    @w5= params[:word5]
    
  end
  
end