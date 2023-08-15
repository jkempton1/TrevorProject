class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :stock_name
      t.decimal :stock_value
      t.string :stock_type

      t.timestamps
    end
  end
end
