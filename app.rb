require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    a_var = params[:name]
    a2_var = a_var.reverse!
    return "#{a2_var}"
  end

  get '/square/:number' do
    a_var = params[:number]
    a2_var = a_var.to_i * a_var.to_i
    return "#{a2_var}"
  end

  get '/say/:number/:phrase' do
    a_var = params[:phrase]
    a2_var = params[:number]
    return a_var.*(a2_var.to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a_var = params[:word1]
    a_var1 = params[:word2]
    a_var2 = params[:word3]
    a_var3 = params[:word4]
    a_var4 = params[:word5]
    return "#{a_var} #{a_var1} #{a_var2} #{a_var3} #{a_var4}."
    #binding.pry
  end

  get '/:operation/:number1/:number2' do
      a_var = params[:operation]
      a_var1 = params[:number1]
      a_var2 = params[:number2]
    if a_var == 'add'
     a_var
     binding.pry
     a_var3 = a_var1.to_i + a_var2.to_i
     return "#{a_var3}"
     binding.pry
    elsif a_var == 'subtract'
     a_var3 = a_var1.to_i - a_var2.to_i
     return "#{a_var3}"
    elsif a_var == 'multiply'
       #binding.pry
     a_var3 = a_var1.to_i * a_var2.to_i
     return "#{a_var3}"
    elsif a_var == 'divide'
      a_var3 = a_var1.to_i / a_var2.to_i
      return "#{a_var3}"
    end
  end
end
