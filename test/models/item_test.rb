require "test_helper"
require 'faker'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Item creation works" do
    assert item = Item.create!(
      name: "Test photo",
      description: "TEST TEST TEST TEST ",
      price: 592.58,
      stock: 508,
      image_url: Faker::LoremFlickr.image(size: "300x300")
    )

    assert Item.find item.id

  end
end
