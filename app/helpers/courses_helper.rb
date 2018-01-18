module CoursesHelper

  # @param [ActiveRecord] exam
  # @return [String]
  def generate_result_cell(exam)
    case exam.result
    when 'absent'
      '<td class=text-center>-</td>'
    when 'pass'
      '<td><span class="badge badge_exam_status badge_pass">Pass</span></td>'
    when 'markdown'
      '<td><span class="badge badge_exam_status badge_markdown">Pass</span</td>'
    when 'retake'
      '<td><span class="badge badge_exam_status badge_retake">Retake</span></td>'
    when 'failed'
      '<td><span class="badge badge_exam_status badge_failed">Failed</span</td>'
    else
      "<td class='danger_row'></td>"
    end
  end

end