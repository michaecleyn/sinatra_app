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

  def test_hello_minitest
    response = get('/hello')
    assert_equal "Hello minitest!", response.body
  end

  def test_week
    response = get('/week')
    assert_equal Date.today.strftime("%A"), response.body
  end

  def test_app_includes_hacker_link
    response = get('/')
    assert_includes response.body, "http://hackeryou.com/"
  end

  def test_has_name
    response = get('/Michael')
    assert_equal "Michael", response.body
  end
end
