module ApplicationHelper
  def username(i)
    User.find(i).username
  end
  def data_theme
    "c"
  end
end
