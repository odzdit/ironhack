products = [
  [ "iphone", "just make calls", Time.now],
  [ "ipad", "bigger calls", Time.now],
  [ "lamp", "it shines", Time.now],
  [ "unicorn", "it shines more", Time.now],
]

products.each do |title, description, deadline |
  Product.create( title: title, description: description, deadline: deadline)
end