class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :table_num
      t.string :items
      t.string :prices

      t.timestamps
    end
  end
end
