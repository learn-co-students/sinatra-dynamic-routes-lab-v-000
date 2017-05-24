require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name].reverse
		"#{@name}"
	end

	get '/square/:number' do
		@number = params[:number].to_i
		"#{@number ** 2}"
	end

	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase]

		phrase_array = []

		@number.times do
			phrase_array << @phrase
		end
		phrase_array.join("\n")
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@word1 = params[:word1]
		@word2 = params[:word2]
		@word3 = params[:word3]
		@word4 = params[:word4]
		@word5 = params[:word5]

		"#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
	end

	get '/:operation/:number1/:number2' do
		@number1 = params[:number1].to_i
		@number2 = params[:number2].to_i
		@operation = nil

		case params[:operation]
		when 'add'
			@operation = '+'
		when 'subtract'
			@operation = '-'
		when 'multiply'
			@operation = '*'
		when 'divide'
			@operation = '/'
		end

		"#{@number1.send(@operation, @number2)}"
	end
end