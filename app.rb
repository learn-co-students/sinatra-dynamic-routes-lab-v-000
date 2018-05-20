require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name]
    "#{@reversename.reverse!}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @say = params[:phrase]
    # @number.sub!(" ", "%20")
    "#{@say * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @first = params[:word1]
    # @second = params[:word2]
    # @third = params[:word3]
    # @fourth = params[:word4]
    # @fifth = params[:word5]

    text = params.each do |key, value|
      self.instance_variable_set("@#{key}".to_sym, "#{value}")
    end
    "#{text.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    else
      "#{@number1 / @number2}"
    end
  end

end