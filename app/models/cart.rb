class Cart < ActiveRecord::Base

  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

  def add_item(item_id)
    # if line_item = self.line_items.find_by(item_id: item_id)
    #
    #   line_item.quantity += 1
    # else
    # line_item = self.line_items.build(item_id: item_id)
    # end
    # line_item
    line_item = self.line_items.find_by(item_id: item_id)
      if line_item
         line_item.quantity += 1
       else
         line_item=self.line_items.build(item_id: item_id)
       end
        line_item
  end

  def total
    total_price = 0
    self.line_items.each do |line_item|
      total_price += line_item.quantity * line_item.item.price
    end
    total_price
  end

  # def checkout
  #   current_cart.inventory = nil
  # end

  def subtract_inventory
    self.line_items.each do |li|
      li.item.inventory -= li.quantity
      li.item.save
    end
  end

end
