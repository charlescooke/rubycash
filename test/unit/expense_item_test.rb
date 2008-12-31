require 'test_helper'

class ExpenseItemTest < ActiveSupport::TestCase
  should_require_attributes :description, :price
  
  should_belong_to :account
  
  context "A simple item" do
    setup do
      @item = ExpenseItem.create(standard_params)
    end
    
    should "return the proper price" do
      assert_equal 104.35, @item.price
    end
  end
  
  private
  def standard_params
    {
      :description => "A new item",
      :price => "104.35"
    }
  end
end
