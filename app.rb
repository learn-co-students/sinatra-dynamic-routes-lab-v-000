require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do 
		name = params[:name].each_char.to_a.reverse.join
		"#{name}"
	end

	get '/square/:number' do 
		sqrt_number = Math.sqrt(params[:number].to_i).to_i.to_s
		number_squared = (params[:number].to_i * params[:number].to_i).to_s
		"#{sqrt_number}"
		"#{number_squared}"
	end

	get '/say/:number/:phrase' do 
		new_phrase = ""
		params[:number].to_i.times do 
			new_phrase << "#{params[:phrase]}\n"
		end 
		new_phrase
	end
	
	get '/say/:word1/:word2/:word3/:word4/:word5' do 
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do 
		if params[:operation] == 'add'
			"#{params[:number1].to_i + params[:number2].to_i}.to_s"
		elsif params[:operation] == 'subtract'
			"#{params[:number1].to_i - params[:number2].to_i}.to_s"
		elsif params[:operation] == 'multiply'
			"#{params[:number1].to_i * params[:number2].to_i}.to_s"
		elsif params[:operation] == 'divide'
			"#{params[:number1].to_i / params[:number2].to_i}.to_s"
		end
	end

end