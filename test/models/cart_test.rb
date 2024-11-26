require "test_helper"

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Cart creation works" do
    
    user = User.all.sample
    assert cart = Cart.create!(user: user)
  end
end
