require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end
  
  get '/say/:number/:phrase' do
    params[:phrase]*(params[:number].to_i)
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    (:word1..:word5).to_a.collect{|word| params[word]}.join(" ")+"."
  end
  
  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'      then (params[:number1].to_f + params[:number2].to_f).to_s
    when 'subtract' then (params[:number1].to_f - params[:number2].to_f).to_s
    when 'multiply' then (params[:number1].to_f * params[:number2].to_f).to_s
    when 'divide'   then (params[:number1].to_f / params[:number2].to_f).to_s
    end
  end

end