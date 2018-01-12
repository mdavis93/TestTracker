class Session < ApplicationRecord
  has_many :courses
  has_many :instructors, through: :courses
  has_many :students, through: :courses
end
