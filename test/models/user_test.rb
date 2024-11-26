require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user creation works" do

    user = User.new(
    email_address: "user_test@test.com",
    password: "123456",
    password_confirmation: "123456",
    first_name: "Chaton",
    last_name: "Fan"
    )

    assert user.save
  end
end
