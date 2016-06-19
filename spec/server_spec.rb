require_relative '../server'

require 'rspec'
require 'rack/test'

set :environment, :test

def app
  Sinatra::Application
end

describe 'Server Service' do
  include Rack::Test::Methods

  it 'should load the home endpoint' do
    get '/home'
    expect(last_response).to be_ok
  end

  it 'should load code endpoint' do
    get '/code'
    expect(last_response).to be_ok
  end
end
