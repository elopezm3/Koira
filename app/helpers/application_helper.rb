module ApplicationHelper
  def resource
    @resource ||= User.new
  end
end
