class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publishing

  has_many :student_cards, dependent: :destroy
end
