require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  	"#{params[:name].reverse}"
  end

  get '/square/:number' do
  	"#{params[:number].to_i*params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
  	#binding.pry
  	final = []
  	params[:number].to_i.times do
  		final << params[:phrase]
  	end
  	final.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  	@op = params[:operation].downcase
  	#binding.pry
  	if @op == "add"
  		return "#{params[:number1].to_i+params[:number2].to_i}"
  	elsif @op == "subtract"
  		return "#{params[:number1].to_i-params[:number2].to_i}"
  	elsif @op == "multiply"
  		return "#{params[:number1].to_i*params[:number2].to_i}"
  	elsif @op == "divide"
  		return "#{params[:number1].to_i/params[:number2].to_i}"
  	end
  end
end