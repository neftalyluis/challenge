module OrderManager
  class OrderItem
    def initialize(product:, quantity:)
      @product = product
      @quantity = quantity
    end

    def total
      @product.price * @quantity
    end
  end
end