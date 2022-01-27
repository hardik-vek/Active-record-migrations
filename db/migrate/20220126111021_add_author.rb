class AddAuthor < ActiveRecord::Migration[7.0]
  def up
    Author.create(fname: "Yuval Noah", lname: "Harrari", dob: "11/01/1978", email: "Yuval@gmail.com")
  end

  def down
  end
end
