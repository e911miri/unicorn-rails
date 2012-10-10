class AdminviewController < ApplicationController
  before_filter :authenticate_admin!
  layout "adminlayout"
  def home
  end
  
  def users
    @users=User.all
  end
  
  def administrators
    @admins=Admin.all
  end
end
