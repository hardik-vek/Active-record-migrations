class Image < ApplicationRecord
  belongs_to :author, polymorphic: true
  belongs_to :author, polymorphic: true
end
