class People < ApplicationRecord
  has_many :students
  has_many :proffessors
  has_many :staffs
end
