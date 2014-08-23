require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = Product.create!(
      name: 'Dodecahedron', 
      price: 2, 
      description: "Some description")
    @image = @product.images.create!(
      full: 'gem-01.gif', 
      thumb: 'gem-01.gif')
    @review = @product.reviews.create!(
      stars: 1, 
      body: "This product sucks", 
      author: "tim@hater.com")
  end

  test "#as json to return hash of json" do
    assert_equal ({ 
      name: @product.name,
      price: @product.price,
      description: @product.description,
      images: [{ full: @image.full, thumb: @image.thumb }],
      reviews: [{ stars: @review.stars, body: @review.body, author: @review.author}]
    }).to_json, @product.to_json
  end
end
