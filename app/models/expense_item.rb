class ExpenseItem < ActiveRecord::Base
  belongs_to :account
  
  validates_presence_of :description, :price
  validates_numericality_of :price
end
