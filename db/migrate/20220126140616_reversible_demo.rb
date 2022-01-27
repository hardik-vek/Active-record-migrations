class ReversibleDemo < ActiveRecord::Migration[7.0]
  def change
    create_table :distributors do |t|
      t.string :zipcode
    end
    reversible do |dir|
      dir.up do
        add_column :distributors, :fname, :string
      end
      dir.down do
        remove_column :distributors, :fname
      end
    end
  end
end
