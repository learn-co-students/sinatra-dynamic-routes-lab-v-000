require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end
  
  get '/square/:number' do
    @sqnum = params[:number].to_i**2
    "#{@sqnum.to_s}"
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times{str += params[:phrase]}
    str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @op = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    case @op
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num1 - @num2}"
      when "multiply"
        "#{@num1 * @num2}"
      when "divide"
        "#{@num1 / @num2}"
      else
        "Enter a valid mathematical operation."
    end
  end
  
end