class UpDownDemo < ActiveRecord::Migration[7.0]
  def up
    create_table :products do |t|
      t.string :name
    end
  end

  def down
    drop_table :products
  end
end
