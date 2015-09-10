module ApplicationHelper
  def is_on_controllers_path(controllers)
    flag = false
    flag = true if controllers.include? @current_controller
    flag
  end

  def next_event(count)
    Event.next_event(count)
  end

  def state_options
    %w(AK AL AR AZ CA CO CT DC DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA WI WV WY)
  end
end
