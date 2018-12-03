require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
get('/reversename/:name'){
  @name = params[:name]
  "#{@name.reverse!}"
  
}

get('/square/:number'){
  @num = params[:number].to_i
  "#{@num * @num}"
}

get('/say/:number/:phrase'){
  @string = ""
  @times = params[:number].to_i
  @phrase = "#{params[:phrase]}"
  @times.times do 
    @string += @phrase
  end
  @string
}
get('/say/:word1/:word2/:word3/:word4/:word5'){
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
}
  get('/:operation/:number1/:number2') {
    x = params[:number1].to_i
    y = params[:number2].to_i
    op = params[:operation]

    ans = 'Error'

    case op
    when 'add'
      ans = (x + y).to_s
    when 'subtract'
      ans = (x - y).to_s
    when 'multiply'
      ans = (x * y).to_s
    when 'divide'
      ans = (x / y).to_s
    end

}




end ##Class End