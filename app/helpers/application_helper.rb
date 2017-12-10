module ApplicationHelper
  def flash_class(level)
    case level
    when 'notice' then "card blue lighten-2 center-align"
    when 'success' then "card blue lighten-2 center-align"
    when 'error' then "card red light-4 center-align"
    when 'alert' then "card red lighten-1 center-align"
    end
  end
end
