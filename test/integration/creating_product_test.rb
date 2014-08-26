require 'test_helper'

class CreatingProductTest < ActionDispatch::IntegrationTest
  test 'creating product with valid params' do
    post '/products', { product: {
      name: 'New Product',
      price: 20 }}

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal 'New Product', JSON.parse(response.body)["name"]
  end

  test 'not creating product with invalid params' do
    post '/products', { product: {
      name: nil,
      price: 20 }}

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
