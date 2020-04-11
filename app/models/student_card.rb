class StudentCard < ApplicationRecord
  belongs_to :student
  belongs_to :staff
  belongs_to :book
end
