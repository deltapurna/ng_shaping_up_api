Product.create!(
  name: 'Dodecahedron', 
  price: 2, 
  description: "Some gems have hidden qualities beyond their luster, beyond their shine... Dodeca is one of those gems.",
  images: [Image.create!(full: 'gem-01.gif', thumb: 'gem-01.gif')],
  reviews: [
    Review.create!({
      stars: 5,
      body: "I love this product!",
      author: "joe@thomas.com"
    }),
    Review.create!({
      stars: 1,
      body: "This product sucks",
      author: "tim@hater.com"
    })]
)
Product.create!(
  name: 'Pentagonal Gem', 
  price: 5.95, 
  description: "Some gems have hidden qualities beyond their luster, beyond their shine... Pentagonal is one of those gems.",
  images: [Image.create!(full: 'gem-03.gif', thumb: 'gem-03.gif')],
  reviews: [
    Review.create!({
      stars: 5,
      body: "I love this product!",
      author: "joe@thomas.com"
    }),
    Review.create!({
      stars: 1,
      body: "This product sucks",
      author: "tim@hater.com"
    })]
)
