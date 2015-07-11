module ApplicationHelper
  def is_on_controllers_path(controllers)
    flag = false
    flag = true if controllers.include? @current_controller
    flag
  end

  def next_event(count)
    Event.next_event(count)
  end
end
