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
  end

end
