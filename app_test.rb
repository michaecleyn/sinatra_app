require 'minitest/autorun'
require 'rack/test'
require './app'

class AppTest < MiniTest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hackeryou_endpoint
    response = get('/hackeryou')
    assert_equal "Is Amazing!", response.body
  end
end
