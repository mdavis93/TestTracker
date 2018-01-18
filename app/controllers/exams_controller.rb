class ExamsController < ApplicationController

  def create
  end

  def new
    @course = Course.find(params[:course_id])
    @exam = Exam.new
  end

  def edit
  end
end
