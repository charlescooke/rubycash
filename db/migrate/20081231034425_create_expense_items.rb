class CreateExpenseItems < ActiveRecord::Migration
  def self.up
    create_table :expense_items do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :expense_items
  end
end
