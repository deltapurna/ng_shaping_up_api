Product.create!(
  name: 'Lenovo E220s', 
  price: 650, 
  description: "The E220s is an affordable and attractive 12-inch business notebook with decent performance but poor battery life.",
  images: [Image.create!(full: 'http://techreport.com/r.x/2011q1/lenovo-e220s-il.jpg', thumb: 'http://blog.laptopmag.com/wpress/wp-content/uploads/2011/01/Lenovo-ThinkPad-E220S-1.jpg')],
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
  name: 'Acer Aspire S7', 
  price: 595, 
  description: "The Acer Aspire S7 impresses with a hyper-HD touchscreen and numerous other improvements, making a serious contender for your laptop bag.",
  images: [Image.create!(full: 'http://img.hexus.net/v2/laptops/Acer/Aspire_S7/S7-04.jpg', thumb: 'http://static.acer.com/up/Resource/Acer/Ultrabooks/AGW2%20Aspire%20S7/Photo%20Gallery/20130416/S7-392-Storm2-photo-gallery-05.png')],
  reviews: [
    Review.create!({
      stars: 4,
      body: "Awesome product!",
      author: "thomas@joe.com"
    }),
    Review.create!({
      stars: 2,
      body: "Better than nothing",
      author: "almosthater@tim.com"
    })]
)
