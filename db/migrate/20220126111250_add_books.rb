class AddBooks < ActiveRecord::Migration[7.0]
  def up
    Book.create(name: "Sapiens", price: 500, author_id: 1)
  end

  def down
  end
end
