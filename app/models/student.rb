class Student < ApplicationRecord
  belongs_to :cohort
  has_many :schedules

  has_many :courses, through: :schedules
  has_many :tests, through: :courses

  enum status: %i[inactive active drop withdrawn loa graduate]
end
