class UsersController < ApplicationController
  layout "layouts/studentlayout"
  def index
    @search=User.search(params[:q])
    @users=@search.result
  end
  
  def search
    
  end
end
