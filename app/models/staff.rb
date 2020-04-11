class Staff < ApplicationRecord
  belongs_to :people

  has_many :student_cards, dependent: :destroy
end
