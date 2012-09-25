class UsersController < ApplicationController
  before_filter :authenticate_user!
  layout "layouts/studentlayout"
  def index
    @user=User.all
    @search=User.search[params[:id]]
  end
end
