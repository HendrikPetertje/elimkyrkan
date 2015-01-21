module ApplicationHelper

  def navigation_class_home(path)
    'active' if current_page?(path)
  end

  def navigation_class(path)
    'active' if request.url.include?(path)
  end

end
