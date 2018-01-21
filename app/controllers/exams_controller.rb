class ExamsController < ApplicationController

  def create
    puts "\nIncoming Params\n#{params.inspect}"
  end

  def new
    @course = Course.find(params[:course_id])
    @exam = Exam.new
  end

  def edit
  end
end
