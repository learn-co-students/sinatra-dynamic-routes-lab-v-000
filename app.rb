require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @user_name = params[:name]
      "#{@user_name}".reverse
   end

    get '/square/:number' do
      @number = params[:number].to_i ** 2
      "#{@number}".to_s
    end

    get '/say/:number/:phrase' do
      @number = params[:number].to_i
      @phrase = params[:phrase]

      "#{@phrase * @number}".to_s
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]

      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do

       if params[:operation] == "add"
         "#{params[:number1].to_i + params[:number2].to_i}"
       elsif params[:operation] == "subtract"
         "#{params[:number1].to_i - params[:number2].to_i}"
       elsif params[:operation] == "multiply"
         "#{params[:number1].to_i * params[:number2].to_i}"
       elsif params[:operation] == "divide"
         "#{params[:number1].to_i / params[:number2].to_i}"
       end
    end
end
