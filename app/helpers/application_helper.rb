module ApplicationHelper
  def username(i)
    User.find(i).username
  end
end
