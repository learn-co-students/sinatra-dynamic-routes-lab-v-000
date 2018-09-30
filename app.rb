require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

  get '/square/:number' do
      @user_number = params[:number].to_i
      (@user_number*@user_number).to_s
  end

  get '/say/:number/:phrase' do
    many_phrase = ''

   params[:number].to_i.times do
     many_phrase += params[:phrase]
   end
   many_phrase
 end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    @user_string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    "#{@user_string}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
    @operated_numbers = params[:number1].to_i + params[:number2].to_i
  elsif @operation == "multiply"
    @operated_numbers = params[:number1].to_i*params[:number2].to_i
  elsif @operation == "subtract"
    @operated_numbers = params[:number1].to_i - params[:number2].to_i
  else
    @operated_numbers = params[:number1].to_i/params[:number2].to_i
  end
    @operated_numbers.to_s
  end
end
