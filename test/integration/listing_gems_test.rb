require 'test_helper'

class ListingGemsTest < ActionDispatch::IntegrationTest
  setup do
    Product.create!(name: 'Dodecahedron', price: 2, description: "Some description")
    Product.create!(name: 'Pentagonal Gem', price: 5.95, description: "Some description")
  end

  test 'listing gems' do
    get '/products'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal Product.all.count, JSON.parse(response.body).size
  end
end
