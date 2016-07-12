require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    str = ""
    (params[:number].to_i).times { str << "#{params[:phrase]}\n" }
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    @word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5 + '.'
  end

  get '/:operation/:num_one/:num_two' do
    case params[:operation]
      when 'add'
        "#{params[:num_one].to_i + params[:num_two].to_i}"
      when 'multiply'
        "#{params[:num_one].to_i * params[:num_two].to_i}"
      when 'subtract'
        "#{params[:num_one].to_i - params[:num_two].to_i}"
      when 'divide'
        "#{params[:num_one].to_i / params[:num_two].to_i}"
    end 
  end

end