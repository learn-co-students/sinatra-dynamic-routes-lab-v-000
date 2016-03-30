require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

	get "/reversename/:name" do
	    name = params[:name]
	    name.gsub!("%20", " ")
	    "#{name.reverse}"
	end

	get "/square/:number" do
	    num = params[:number].to_i
	    num=num*num
	    "#{num}"
	end

	get "/say/:number/:phrase" do
		phrase=""
	    params[:number].to_i.times do
	    	phrase << "#{params[:phrase].to_s}\n"
	    end
	    phrase
	    
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		#binding.pry
		params["captures"].join(" ")+"."
	end

	get '/:operation/:number1/:number2' do
		if params[:operation]="multiply"
			result = params[:number1]*params[:number2]
			result.to_s
		elsif params[:operation]="subtract"
			result = params[:number1]-params[:number2]
			result.to_s
		elsif params[:operation]="add"
			result = params[:number1]+params[:number2]
			result.to_s
		end
	end

end