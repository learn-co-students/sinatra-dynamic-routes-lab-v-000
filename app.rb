require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:num' do
    (params[:num].to_i**2).to_s
  end
  
  get '/say/:number/:phrase' do
    num = params[:number].to_i
    str = String.new
    num.times do
      str += params[:phrase]
    end
    str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase_array = Array.new
    params.each do |k, v|
      next if v.class != String
      phrase_array << v
    end
    phrase_array.join(" ") + "."
  end
  
  get '/:operation/:num1/:num2' do
    num1, num2 = params[:num1].to_i, params[:num2].to_i
    case params[:operation]
    when 'add'
      result = (num1 + num2).to_s
    when 'subtract'
      result = (num1 - num2).to_s
    when 'multiply'
      result = (num1 * num2).to_s
    when 'divide' 
      result = (num1 / num2).to_s
    end
    result
  end
end