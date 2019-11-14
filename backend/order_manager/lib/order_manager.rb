require 'order_manager/version'

module OrderManager
  def start
    shirt = Product.new(
      name: 'Flowered t-shirt',
      type: :physical,
      price: 35.00
    )

    netflix = Product.new(
      name: 'Familiar plan',
      type: :membership,
      price: 29.90
    )

    book = Product.new(
      name: "The Hitchhiker's Guide to the Galaxy",
      type: :book,
      price: 120.00
    )

    music = Product.new(
      name: 'Stairway to Heaven',
      type: :digital,
      price: 5.00
    )

    order = Order.new(customer: Customer.new, address: Address.new)

    order.add_product(product: shirt, quantity: 2)
    order.add_product(product: netflix, quantity: 1)
    order.add_product(product: book, quantity: 1)
    order.add_product(product: music, quantity: 1)

    order.pay(CreditCard.new('43567890-987654367'))
  end
end
