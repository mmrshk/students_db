class TutorCard < ApplicationRecord
  belongs_to :proffessor
  belongs_to :staff
  belongs_to :book
end
