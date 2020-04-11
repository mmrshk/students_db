class Proffessor < ApplicationRecord
  belongs_to :people

  has_many :tutor_cards, dependent: :destroy
end
