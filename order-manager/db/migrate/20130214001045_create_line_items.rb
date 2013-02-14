class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, {:null => false}
      t.references :product, {:null => false}
      t.integer :quantity, {:null => false}

      t.timestamps
    end
  end
end
