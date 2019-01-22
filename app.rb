require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @squared = @number ** 2
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    repeated_phrase = ""
    params[:number].to_i.times do |n|
      repeated_phrase += params[:phrase]
    end
      repeated_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    "#{params[:number1]} params[:operation] #{params[:number2]}"
    binding.pry
    #convert to integers and do if/else statement?
  end


end
