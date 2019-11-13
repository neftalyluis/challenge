require "order_manager/version"

module OrderManager
  def start
    shirt = Product.new(name: "Flowered t-shirt", type: ProductType.PHYSICAL, amount: 35.00)
    netflix = Product.new(name: "Familiar plan", type: ProductType.MEMBERSHIP, amount: 29.90)
    book = Product.new(name: "The Hitchhiker's Guide to the Galaxy", type: ProductType.BOOK, amount: 120.00)
    music = Product.new(name: "Stairway to Heaven", type: ProductType.DIGITAL, amount: 5.00)

    order = Order.new(Customer.new(), Address.new())

    order.addProduct(shirt, 2)
    order.addProduct(netflix, 1)
    order.addProduct(book, 1)
    order.addProduct(music, 1)

    order.pay(CreditCard.new("43567890-987654367"))
  end
end
