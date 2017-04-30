require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @word = params[:name]

    reverse_word = @word.split('').reverse.join
    "#{reverse_word}"

  end

  get '/square/:number' do
    @num = params[:number]
    sq_num = @num.to_i ** 2
    "#{sq_num}"

  end

  get '/say/:number/:phrase' do
    astring = " "
    anum = params[:number].to_i
    aphrase = params[:phrase]
      anum.times do
        astring +="#{aphrase}\n"

      end
    astring
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @first_num  = params[:num1]
    @second_num  = params[:num2]
    @operation = params[:operation]
    if operation == "add"
      "#{@first_num.to_i + @second_num.to_i}!"
    elsif operation == "subtract"
      "#{@first_num.to_i - @second_num.to_i}!"
    elsif operation == "multiply"
      "#{@first_num.to_i * @second_num.to_i}!"
    elsif operation == "divide"
      "#{@first_num.to_i / @second_num.to_i}!"
    else
      "No operation"
    end


  end
end
