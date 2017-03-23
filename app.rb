require_relative 'config/environment'

class App < Sinatra::Base


  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase] + "\n"
    @content = @phrase * @number
    "#{@content}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @phrase = params[:captures].join(' ')
    "#{@phrase}."
  end


  get "/:operation/:x/:y" do
    @operation = params[:operation]
    @x = params[:x].to_i
    @y = params[:y].to_i
    case @operation
    when "add"
      @z = @x + @y
    when "subtract"
      @z = @x - @y
    when "multiply"
      @z = @x * @y
    when "divide"
      @z = @x / @y
    else
      "Not found"
    end
    "#{@z}"
  end
end