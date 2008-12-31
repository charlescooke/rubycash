class CreateExpenseItems < ActiveRecord::Migration
  def self.up
    create_table :expense_items do |t|
      t.string :description
      t.integer :account_id
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :expense_items
  end
end
