defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the amount of elements of the list" do
      no_item = []
      expected_no_item = 0
      response = ListLength.call(no_item)

      assert response === expected_no_item

      one_item = [1]
      expected_one_item = 1

      response = ListLength.call(one_item)

      assert response === expected_one_item

      two_items = [2, 3]
      expected_two_items = 2

      response = ListLength.call(two_items)

      assert response === expected_two_items

      six_items = [4, 5, 6, 7, 8, 9]
      expected_six_items = 6

      response = ListLength.call(six_items)

      assert response === expected_six_items
    end
  end
end
