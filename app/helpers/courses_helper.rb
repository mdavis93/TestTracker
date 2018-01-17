module CoursesHelper

  # @param [ActiveRecord] exam
  # @return [String]
  def generate_result_cell(exam)
    case exam.result
    when 'absent'
      '<td>Absent</td>'
    when 'pass'
      '<td>Pass</td>'
    when 'markdown'
      '<td>Markdown</td>'
    when 'failed'
      '<td>1st Fail</td>'
    when 'failed_final'
      '<td>Failed</td>'
    else
      "<td class='danger_row'></td>"
    end
  end

  def row_background_color(exam)
    case exam.result
    when 'absent', 'failed'
      'class=bg-warning'
    when 'failed_final'
      'class=bg-danger'
    when 'markdown'
      'class=bg-primary'
    when 'pass'
      'class=bg-success'
    else
      ''
    end
  end

end