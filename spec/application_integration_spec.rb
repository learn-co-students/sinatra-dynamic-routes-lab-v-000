require 'spec_helper'

describe App do

describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit('/')
    expect(page.body).to include("Welcome!")
  end
end

end