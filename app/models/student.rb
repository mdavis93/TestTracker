class Student < ApplicationRecord
  belongs_to :cohort
  has_many :schedules, dependent: :destroy

  has_many :courses, through: :schedules
  has_many :exams

  enum status: %i[inactive active drop withdrawn loa graduate]
end
