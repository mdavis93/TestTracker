class CoursesController < ApplicationController
  def index
    @courses = if current_user && current_user.instructor?
                 Course.where(instructor_id: current_user.instructor.id)
               elsif current_user
                 Course.all
               else
                 Course.first
               end
  end

  def show
    @course = Course.find(params[:id])
    @written_exams = Exam.where(exam_type: 'written', course_id: @course.id)
    @practical_exams = Exam.where(exam_type: 'practical', course_id: @course.id)
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
  end
end
