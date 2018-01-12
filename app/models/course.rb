class Course < ApplicationRecord
  has_one :instructor
  belongs_to :session
  has_many :schedules, dependent: :destroy
  has_many :tests, dependent: :destroy
  has_many :students, through: :schedules

  enum shift: %i[day night]


  def get_by_student_id(_id)
    Test.find_by(student_id: _id)
  end
end