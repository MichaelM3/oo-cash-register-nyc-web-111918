require 'pry'
class CashRegister
  attr_accessor :total, :discount, :price, :items
  attr_reader :title

  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount

    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    self.total += price * quantity

    quantity.times do
    @items << title
    end
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      self.total -= (self.discount.to_f / 100.0) * self.total
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -=  self.price
  end
end
