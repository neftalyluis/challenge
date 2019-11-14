module OrderManager
  class Invoice
    attr_reader :billing_address, :shipping_address
    def initialize(order)
      @billing_address = order.address
      @shipping_address = order.address
    end
  end
end