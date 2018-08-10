require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    erb :name
  end

  get '/square/:num' do
    erb :square
  end

  get '/say/:num/:phrase' do
    erb :phrase
  end

  get '/say/:w1/:w2/:w3/:w4/:w5' do
    erb :sentence
  end

  get '/:operation/:number1/:number2' do
    begin
      op = Operation.send("#{params[:operation]}")
    rescue NoMethodError => e
      status 404
      erb :oops
    end
    @ans = self.operate(params[:number1].to_f, params[:number2].to_f, op)
    erb :operation
  end

  def operate(n1, n2, lam)
    lam.call(n1,n2)
  end

  class Operation

    def self.add
      lambda {|x,y| x + y}
    end

    def self.multiply 
      lambda {|x,y| x * y}
    end

    def self.subtract
      lambda {|x,y| x - y}
    end

    def self.divide
      lambda {|x,y| x / y}
    end

  end

end