class Exam < ApplicationRecord
  belongs_to :course
  belongs_to :student

  enum result: %i[absent pass markdown retake failed]
  enum exam_type: %i[written practical]

  def session
    course.session.name.last
  end
end
