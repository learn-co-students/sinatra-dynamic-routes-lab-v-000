require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeats = []
    @number.times do |i|
      @repeats << @phrase
    end
    "#{@repeats.join(" ")}"
    #There HAS to be a better way to do this... For some reason I kept getting a lint error when I tried
    #to print using an iterator.
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

end
