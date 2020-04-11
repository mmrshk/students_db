class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :publishings, through: :books, dependent: :destroy
end
