module ApplicationHelper
  def active_path(path)
    'active' if request.path == path
  end

  def active_controller(controller)
    'active' if controller_name == controller
  end

  def active_for(path: nil, controller: nil)
    if path && request.path == path ||
         controller && controller_name == controller
      'active'
    end
  end
end
