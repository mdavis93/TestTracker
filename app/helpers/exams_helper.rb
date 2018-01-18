module ExamsHelper
  def exam_status_for_select_options(exam = nil)
    return ['Absent', 'Pass', 'Markdown', 'Fail', 'Final Fail'] if exam.nil?

    case exam.result
    when 'retake'
      'Fail'
    when 'failed'
      'Final Fail'
    else
      exam.result.humanize
    end
  end
end
