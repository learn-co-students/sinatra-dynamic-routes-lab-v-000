require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get'/square/:number' do 
    @num = params[:number] 
    "#{@num.to_i ** 2}"
  end

  get'/say/:number/:phrase' do 
    @output = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do 
      @output << @phrase
      @output << "\n"
    end
    "#{@output}"  
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation] 
    when 'add'
      "#{@num1 + @num2}"  
    when 'subtract'
      "#{@num1 - @num2}"
    when 'multiply' 
      "#{@num1 * @num2}"
    when 'divide' 
      if @num2 != 0
        "#{@num1 / @num2}"
      else
        "Cannot divide by 0"
      end
    else 
      "Cannot process that operation" 
    end
  end

end
    
