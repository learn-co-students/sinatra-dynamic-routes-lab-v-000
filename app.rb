require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 

    @new_name = params[:name]
    @new_name.reverse
  end

  get '/square/:number' do
    @new_num = params[:number] 
    (@new_num.to_i ** 2).to_s
  end 

  get '/say/:number/:phrase' do
    @new_num = params[:number]
    @new_phrase = params[:phrase]
    @new_array = []
    i=1
    while i <= @new_num.to_i
      @new_array << @new_phrase
      i +=1
    end 
    @new_array.join(" ")
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @new_word1 = params[:word1]
    @new_word2 = params[:word2]
    @new_word3 = params[:word3]
    @new_word4 = params[:word4]
    @new_word5 = params[:word5]

    "#{@new_word1} #{@new_word2} #{@new_word3} #{@new_word4} #{@new_word5}."
  end 

  get '/:operation/:number1/:number2' do
    @new_operation = params[:operation]
    @new_num1 = params[:number1]
    @new_num2 = params[:number2]

    case @new_operation

      when "add"
        (@new_num1.to_i + @new_num2.to_i).to_s
      when "subtract"
         (@new_num1.to_i - @new_num2.to_i).to_s
      when "multiply"
         (@new_num1.to_i * @new_num2.to_i).to_s
      when "divide"
         (@new_num1.to_i / @new_num2.to_i).to_s
    end 
  end 
end