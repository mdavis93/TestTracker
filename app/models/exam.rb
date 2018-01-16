class Exam < ApplicationRecord
  belongs_to :course
  belongs_to :student

  enum result: %i[absent pass markdown failed failed_final]
  enum exam_type: %i[written practical]

  def session
    course.session.name.last
  end
end
