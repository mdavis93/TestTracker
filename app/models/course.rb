class Course < ApplicationRecord
  belongs_to :instructor
  belongs_to :session
  has_many :schedules, dependent: :destroy
  has_many :exams, dependent: :destroy
  has_many :students, through: :schedules

  enum shift: %i[day night]


  def tests_by_student_id(student_id)
    Exam.where(student_id: student_id, course_id: id)
  end
end