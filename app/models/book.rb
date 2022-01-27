class Book < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :price, presence: true
  belongs_to :author
end
