module ApplicationHelper
  def status_class(status, style='badge')
    "#{style} #{style}" <<
    case status
    when 'here'
      '-success'
    when 'lunch'
      '-warning'
    when 'away'
      ''
    else
      '-inverse'
    end
  end

  def status_badge(status)
    status = "away" if status.blank?
    content_tag :span, status, class: 'big ' + status_class(status, 'badge')
  end
end
