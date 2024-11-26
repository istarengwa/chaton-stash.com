require "test_helper"

class CartItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "CartItem creation works" do
    user = User.all.sample
    cart = Cart.all.sample
    item = Item.all.sample

    assert CartItem.create(cart: cart, item: item)
  end
end
