require_relative ('lib/shopping_cart')
require_relative ('lib/item')
require_relative ('lib/fruit')
require_relative ('lib/houseware')


#Application
#Store Menu
dieters_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = HouseWare.new("Vaccuum", 200)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.add_item(oj)
dieters_cart.checkout
