require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
   # Write your code here!
   get '/reversename/:name' do
      params[:name].reverse
   end

   get '/square/:number' do
      "#{params[:number].to_i**2}"
   end

   get '/say/:number/:phrase' do
      @x =[];
      # params[:number].to_i.times {|i| puts params[:phrase].to_s}
      params[:number].to_i.times {|i| @x << params[:phrase].to_s}
      @x.each { |x|  puts x}
      binding.pry
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
      @x = []
      @y = params.each {|key, value| @x << value}
      @x.join(' ')+'.'
   end

   get '/:operation/:number1/:number2' do
      @x = params[:operation]
      @y = params[:number1].to_i
      @z = params[:number2].to_i
      if @x == "add"
         "#{@y + @z}"
      elsif @x == "subtract"
         "#{@y - @z}"
      elsif @x == "multiply"
         "#{@y * @z}"
      elsif @x == "divide"
         "#{@y / @z}"
      end
   end

end
