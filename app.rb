require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i*params[:number].to_i).to_s
  end

  get '/say/:number/:phrase' do
    mystr = ""
    for i in 0..params[:number].to_i
      mystr << params[:phrase]+"\n"
    end
    mystr
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
  end

  get '/:operation/:number1/:number2' do
    eval(params[:number1]+params[:operation]+params[:number2]).to_s
  end
end