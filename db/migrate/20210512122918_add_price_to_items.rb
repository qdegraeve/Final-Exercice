class AddPriceToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :price, :decimal, default: 0.0
  end
end
