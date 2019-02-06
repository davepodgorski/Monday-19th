require '.product.rb'

class ShoppingCart

  @@shoppingcart = []

  def add_to_cart(product)
     @@shoppingcart << product
     return @@shoppingcart
  end

  def remove_from_cart(product)
    @@shopping_cart.delete(product)
    return @@shoppingcart
  end

  def add_total
    counter = 0
    @@shoppingcart.each do |product|
      counter += product.price
    end
    return counter
  end

  def add_with_tax
    counter = 0
    @@shoppingcart.each do |product|
      counter += product.total_price
    end
    return counter
  end

end
