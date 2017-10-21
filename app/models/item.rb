class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items


  def self.available_items
      where('inventory > ?', 0)
#       Client.where("orders_count = '2'")
# # SELECT * from clients where orders_count = '2';
  end

end
