class StudentviewController < ApplicationController
  before_filter :authenticate_user!
  layout "layouts/studentlayout"
  def index
  end

  def messages
    @messages= Message.all
  end

  def events
    @events=Event.all
  end
  
  def register
    redirect_to new_user_registration_path
  end
  
  def login
    redirect_to new_user_session_path
  end
  
  def event
    @event=Event.find(params[:id])
  end

  def registration

  end
  
  def users
    @search= User.search(params[:q])
    @users=User.all
  end
end
