class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.references :author, polymorphic: true, null: false
      t.references :books, polymorphic: true, null: false

      t.timestamps
    end
  end
end
