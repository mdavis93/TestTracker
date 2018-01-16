module CoursesHelper

  def generate_apmf_rows(exam)
    case exam.result
    when 'absent'
      "<td class='warning_row'>#{fa_icon 'circle'}</td><td></td><td></td><td></td>"
    when 'pass'
      "<td></td><td>#{fa_icon 'check'}</td><td></td><td></td>"
    when 'markdown'
      "<td></td><td></td><td>#{fa_icon 'check-circle'}</td><td></td>"
    when 'failed'
      "<td></td><td></td><td></td><td class='warning_row'>#{fa_icon 'circle-thin'}</td>"
    when 'failed_final'
      "<td></td><td></td><td></td><td class='warning_row'>#{fa_icon 'times-circle', style: 'color: red'}</td>"
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
    else
      ''
    end
  end


  private

  def table_headers
    '<thead class="cortiva-gold-background">
      <tr>
        <th>Cohort</th>
        <th>Student</th>
        <th>Exam</th>
        <th>Absent</th>
        <th>Pass</th>
        <th>Markdown</th>
        <th>Fail</th>
      </tr>
    </thead>'
  end
end