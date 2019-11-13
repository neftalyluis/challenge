module OrderManager
  class Product
    attr_reader :name, :type, :amount
    def initialize(name:, type:, amount:)
      @name = name
      @type = type
      @amount = amount
    end
  end
end