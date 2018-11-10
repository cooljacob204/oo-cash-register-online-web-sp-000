require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = -1)
    @total = 0
    @discount = discount
<<<<<<< HEAD
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @items << {item => {:quantity => quantity, :price => price}}
=======
    @items = {}
  end
  
  def add_item(item, price, quantity = 1)
    if @items[item] 
      @items[item][quantity] += quantity 
    else
      @items[item] = {:quantity => quantity, :price => price}
    end
>>>>>>> 3e0dde3e383fba968a4dbd7975fdccb70bb25ca0
    @total += price * quantity
  end
  
  def apply_discount
    return "There is no discount to apply." if discount == -1
    @total = @total * (1 - @discount.to_f/100)
    return "After the discount, the total comes to $#{@total.to_s.split(/\.0*$/)[0]}."
  end
  
  def items
<<<<<<< HEAD
    items_array = []
      @items.each do |item|
        for i in 1 .. item[item.keys[0]][:quantity]
          items_array << item.keys[0].to_s
        end
      end
    items_array
  end
  
  def void_last_transaction
    item = @items.last
    @total -= item[item.keys[0]][:price] * item[item.keys[0]][:quantity]
    @items.pop
=======
    return items.keys
>>>>>>> 3e0dde3e383fba968a4dbd7975fdccb70bb25ca0
  end
  
end