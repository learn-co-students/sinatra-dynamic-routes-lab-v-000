require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse 
  end

  get '/square/:number' do 
    num = params[:number].to_i
    (num * num).to_s
  end

  get '/say/:number/:phrase' do
    # binding.pry
    # params[:number].to_i.times do 
    #    params[:phrase].write
    # end
    # 200 
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end

  get '/:operation/:number1/:number2' do
    params[:number1].to_i.send(params[:operation], params[:number2].to_i)
  end

end