require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		params[:name].reverse
	end

	get '/square/:number' do
		"#{params[:number].to_i*params[:number].to_i}"
	end

	get '/say/:number/:phrase' do
		result = []
		params[:number].to_i.times do
			result << params[:phrase]
		end
		result.join("\n")
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		params.collect { |k,v| v }.join(" ") + "."
	end

	get '/:op/:first/:last' do
		first = params[:first].to_i
		last = params[:last].to_i
		res = 0
		case params[:op]
		when "add"
			res = first+last
		when "subtract"
			res = first-last
		when "multiply"
			res = first*last
		when "divide"
			res = first/last
		end
		res.to_s
	end
	
end