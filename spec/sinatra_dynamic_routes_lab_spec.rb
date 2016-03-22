describe App do

  describe 'GET /reversename/:name' do
    before do 
      get '/reversename/victoria'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'renders the name backwards' do 
      expect(last_response.body).to include("airotciv")
    end
  end

  describe 'GET /square/:number' do
    before do 
      get '/square/4'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'renders the square of the number' do 
      expect(last_response.body).to include("16")
    end
  end

  describe 'GET /say/:number/:phrase' do
    before do 
      get '/say/3/show%20me%20the%20money'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'repeats the phrase n times' do 
      expect(last_response.body).to include("show me the money\nshow me the money\nshow me the money")
    end
  end

  describe 'GET /say/:word1/:word2/:word3/:word4/:word5' do
    before do 
      get '/say/stop/rhyming/I/mean/it'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'concatenates the words and adds a period' do 
      expect(last_response.body).to include("stop rhyming I mean it.")
    end
  end

    describe 'GET /:operation/:number1/:number2' do

    it 'adds two numbers together' do 
      get '/add/10/9'
      expect(last_response.body).to include("19")
    end

    it 'subtracts the second number from the first' do 
      get '/subtract/20/9'
      expect(last_response.body).to include("11")
    end

    it 'multiplies two numbers together' do 
      get '/multiply/12/11'
      expect(last_response.body).to include("132")
    end

    it 'divides the first number by the second number' do 
      get '/divide/10/2'
      expect(last_response.body).to include("5")
    end
  end
end