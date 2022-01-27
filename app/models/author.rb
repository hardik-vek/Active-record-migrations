class Author < ApplicationRecord
  validates :fname, presence: true, length: { minimum: 2 }
  validates :lname, presence: true, length: { minimum: 2 }
  validates :dob, presence: true
  validates :email, presence: true
  has_many :books
end
