module ApplicationHelper
  def is_on_controllers_path(controllers)
    flag = false
    flag = true if controllers.include? @current_controller
    flag
  end

  def next_event
    Event.where("time >= ?", Time.now.beginning_of_day).order("time ASC").first
  end
end
