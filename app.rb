require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse 
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
   phrase_loop = ""
    params[:number].to_i.times do
      phrase_loop += "#{params[:phrase]}\n"
    end
    phrase_loop
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]  + "." 
  end

  get '/:operation/:number1/:number2' do
   # "#{params[:number1].to_i.method(:number1) params[:number2].to_i}"
   String.new.send :operation, [:number1].to_i, [:number2].to_i
  end




end