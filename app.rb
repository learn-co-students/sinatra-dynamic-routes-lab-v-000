require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reverse = params[:name]
    "#{@reverse.reverse!}"
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @first = params[:word1]
    @second = params[:word2]
    @third = params[:word3]
    @fourth = params[:word4]
    @fifth = params[:word5]
    "#{@first} #{@second} #{@third} #{@fourth} #{@fifth}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    if @operation.include?('add')
      @new = '+'
      elsif @operation.include?('subtract')
      @new = '-'
      elsif @operation.include?('multiply')
      @new = '*'
    else
      @new = '/'
    end
    @sum = @num_1.send(@new, @num_2)
    "#{@sum}"
  end 
end