require_relative '../server.rb'
require 'rspec'
require 'rack/test'
require 'pry'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "hould load the home page" do
    get "/homepage"
    expect(last_response).to be_ok
  end

end
=begin
  it "should load the home page" do
    get "/"
    expect(last_response).to be_ok
  end
  it "should not load the home page" do
    get "/home"
    expect(last_response).to_not be_ok
  end
  it "should load the other page" do
    get "/real_page"
    expect(last_response).to be_ok
  end
  it "should redirect to the real_page" do
    get "/hi"
    expect(last_response.redirect?).to be(true)
    follow_redirect!
    expect(last_request.path).to eq('/real_page')
  end
=end 



