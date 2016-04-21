require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
      "#{@user_name.reverse}"
    end
    get '/square/:number' do
      "#{params[:number].to_i ** 2}.to_s"
    end
    get '/say/:number/:phrase' do
      number = params[:number].to_i
      "#{params[:phrase]}\n" * number
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do

        "#{params[:word1]} "  + "#{params[:word2]} "  + "#{params[:word3]} "  + "#{params[:word4]} "  + "#{params[:word5]}" + "."
      end

      get '/:multiply/:number1/:number2' do
        mult = params[:multiply]
        num1 = params[:number1].to_i
        num2 = params[:number2].to_i
        num3.to_s = num1 * num2

      end
end
