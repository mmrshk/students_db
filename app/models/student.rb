class Student < ApplicationRecord
  belongs_to :group
  belongs_to :people

  has_many :student_cards, dependent: :destroy
end
