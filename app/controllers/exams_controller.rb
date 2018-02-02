class ExamsController < ApplicationController

  def create
    puts "\nIncoming Params\n#{params.inspect}"
    params.each do |p|
      puts p.inspect
    end
  end

  def new
    @course = Course.find(params[:course_id])
    @exam = Exam.new
  end

  def edit
  end
end
