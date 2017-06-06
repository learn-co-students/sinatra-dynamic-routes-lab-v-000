require_relative 'config/environment'

class App < Sinatra::Base

	get "/reversename/:name" do
		"#{params[:name].reverse}"
	end

	get "/square/:number" do
		"#{params[:number].to_i ** 2}"
	end

	get "/say/:number/:phrase" do
    @phrase = params[:phrase] + "\n"
		"#{@phrase}" * params[:number].to_i
	end

	get "/say/:word1/:word2/:word3/:word4/:word5" do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do
    num1_int = params[:number1].to_i
    num2_int = params[:number2].to_i
		case params[:operation]
      when "add"
        "#{num1_int + num2_int}"
      when "multiply"
        "#{num1_int * num2_int}"
      when "subtract"
        "#{num1_int - num2_int}"
      when "divide"
        "#{num1_int / num2_int}"
    end
	end

end
