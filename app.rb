require_relative 'config/environment'

class App < Sinatra::Base
   get '/reversename/:name' do
      @name = params[:name]
      @name.reverse!.to_s
   end

   get '/square/:number' do
      @n = params[:number].to_i
      (@n**2).to_s
   end

   get '/say/:number/:phrase' do
      @n = params[:number].to_i
      @phrase = params[:phrase]

      @n.times.collect do
         @phrase
      end
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
      @phrase = ''
      params.each do |_param, value|
         @phrase += value + ' '
      end
      @phrase.strip + '.'
   end

   get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      case @operation
      when 'add'
         @result = params[:number1].to_i + params[:number2].to_i
      when 'subtract'
         @result = params[:number1].to_i - params[:number2].to_i
      when 'multiply'
         @result = params[:number1].to_i * params[:number2].to_i
      when 'divide'
         @result = params[:number1].to_i / params[:number2].to_i
      end
      @result.to_s
   end
end
