class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :carts
         has_one :current_cart, :class_name => "Cart"

  # after_create do
  #   if self.carts.count == 0
  #   self.current_cart = Cart.create
  #   self.save
  # end
  # end


# :class_name
#
# If the name of the other model cannot be derived from the association name, you can use the :class_name option to supply the model name. For example, if a book belongs to an author, but the actual name of the model containing authors is Patron, you'd set things up this way:


# def create_current_cart
#   self.current_cart = self.carts.create
#   self.save
#    end


end
