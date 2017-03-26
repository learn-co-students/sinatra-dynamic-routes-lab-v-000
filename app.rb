require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name]
		"#{@name.reverse}"
	end

	get '/square/:number' do
		@squared = params[:number].to_i * params[:number].to_i
		"#{@squared.to_s}"
	end

 	get '/say/:number/:phrase' do
 		@number = params[:number].to_i
 		@phrase = params[:phrase].gsub(/%20/," ")
 		full_phrase = ""
 		
 		@number.times do
 			full_phrase += "#{@phrase}\n"	
 		end

 		full_phrase

 	end

 	get '/say/:word1/:word2/:word3/:word4/:word5' do
 		word1 = params[:word1].gsub(/%20/," ")
 		word2 = params[:word2].gsub(/%20/," ")
 		word3 = params[:word3].gsub(/%20/," ")
 		word4 = params[:word4].gsub(/%20/," ")
 		word5 = params[:word5].gsub(/%20/," ")

 		"#{word1} #{word2} #{word3} #{word4} #{word5}."
 	end

 	get '/:operation/:number1/:number2' do
 		case params[:operation]
	 		when "add"
	 			"#{params[:number1].to_i + params[:number2].to_i}"
	 		when "subtract"
	 			"#{params[:number1].to_i - params[:number2].to_i}"
	 		when "multiply"
	 			"#{params[:number1].to_i * params[:number2].to_i}"
	 		when "divide"
	 			"#{params[:number1].to_i / params[:number2].to_i}"
 		end
 	end
end