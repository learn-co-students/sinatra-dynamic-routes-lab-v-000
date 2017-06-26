require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
  	params[:name].reverse
  end

  get '/square/:number' do 
  	@user_num = params[:number].to_i
  	"#{(@user_num*@user_num).to_s}"
  end

  get '/say/:number/:phrase' do 
  	phrase = ""
    (params[:number].to_i).times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
  	@op = params[:operation]
  	@n1 = params[:number1].to_i
  	@n2 = params[:number2].to_i
  	case @op 
  	when "add"
  		"#{@n1+@n2}"
  	when "subtract"
  		"#{@n1-@n2}"
  	when "divide"
  		"#{@n1/@n2}"
  	when "multiply"
  		"#{@n1*@n2}"
  	end
  end



end