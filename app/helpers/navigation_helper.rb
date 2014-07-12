module NavigationHelper
  def link_to_path path, label
    return link path, label, url_for(:only_path => true).eql?(path)
  end

  def link_to_controller dst_controller_name, label, action = 'index'
    return link url_for(:controller => "/#{dst_controller_name}", :action => action), label, controller.controller_name.eql?(dst_controller_name)
  end

  private

  def link path, label, active
    result = "<li "
    if active then
      result += "class='active'"
    end
    result += ">" + (link_to label, path) + "</li>"

    return result.html_safe
  end
end

