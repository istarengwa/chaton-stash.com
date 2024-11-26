require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Order creation works" do
    user = User.all.sample
    

    order = Order.new(
      user: user,
      total_price: 250.0
    )

    assert order.save
  end
end
