module OrderManagement
  class Payment
    def initialize(order:, payment_method:)
      @order = order
      @payment_method = payment_method
      @paid_at = Date.today
      @authorization_number = @paid_at.to_time
      @amount = order.total_amount
      @invoice = Invoice.new(order)
    end
  end
end