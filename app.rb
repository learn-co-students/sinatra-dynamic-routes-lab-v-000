require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		"#{params[:name].reverse}"
	end

	get '/square/:number' do
		@number = params[:number].to_i
		@solution = @number * @number
		# binding.pry
		"#{@solution.to_s}"
	end

	get '/say/:number/:phrase' do
		solution = ""
		@phrase = params[:phrase]
		@num = params[:number].to_i
		@num.times do
			solution << "#{@phrase}\n"
		end
		return solution
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		# @word1 = params[:word1]
		# @word2 = params[:word2]
		# @word3 = params[:word3]
		# @word4 = params[:word4]
		# @word5 = params[:word5]

		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      solution = @number1 + @number2
    elsif @operation == "subtract"
      solution = @number1 - @number2
    elsif @operation == "multiply"
      solution = @number1 * @number2
    elsif @operation == "divide"
      solution = @number1 / @number2
    else
      solution = "Unable to perform this operation"
    end
    solution.to_s
  end
end
