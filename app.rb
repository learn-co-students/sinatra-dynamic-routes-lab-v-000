require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    @name = params[:name]
    ans = ""
    @name.split("").each {|i| ans = i + ans}
    ans
  end

  get '/square/:number' do 
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do 
    ans = ""
    params[:number].to_i.times do
      ans << params[:phrase]
      ans << "\n"
    end
    ans
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  # add, subtract, multiply or divide
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    op = params[:operation]
    case op
    when "add"
      (n1 + n2).to_s
    when "subtract"
      (n1 - n2).to_s
    when "multiply"
      (n1 * n2).to_s
    when "divide"
      (n1 / n2).to_s
    end
  end
end











