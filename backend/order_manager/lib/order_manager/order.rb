module OrderManager
  class Order
    attr_reader :customer, :address
    def initialize(customer:, address:)
      @customer = customer
      @address = address
      @items = []
      @closed_at = nil
      @payment = nil
    end

    def total_amount
      items.map(&:total).inject(0, &:+)
    end

    def add_product(product:, quantity:)
      throw StandardError if @items.any? { |item| item.product == product }
      @items.push(OrderItem.new(product: product, quantity: quantity))
    end

    def pay(method)
      throw StandardError unless @payment.nil?
      throw StandardError if @items.empty?
      @payment = Payment.new(self, method)
    end

    def close
      @closed_at = DateTime.now
    end
  end
end