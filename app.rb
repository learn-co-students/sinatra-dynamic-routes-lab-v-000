require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    reversed = params[:name].reverse

    "#{reversed}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    output = ""
    params[:number].to_i.times { output += params[:phrase] }

    "#{output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      "#{n1 + n2}"
    when 'subtract'
      "#{n1 - n2}"
    when 'multiply'
      "#{n1 * n2}"
    when 'divide'
      "#{n1 / n2}"
    else
      "Invalid operation"
    end
  end

end
