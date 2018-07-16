require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i*params[:number].to_i
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    print_phrase = ""

    params[:number].to_i.times do
      print_phrase +=params[:phrase]
    end

    print_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i

    op = params[:operation]

    if op == 'add'
       "#{number_1 + number_2}"
    elsif op == 'subtract'
      "#{number_1 - number_2}"
    elsif op == 'multiply'
      "#{number_1 * number_2}"
    elsif op == 'divide'
      "#{number_1/number_2}"
    end


  end

end
