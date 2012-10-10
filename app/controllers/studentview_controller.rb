class StudentviewController < ApplicationController
  before_filter :authenticate_user!
  skip_before_filter :authenticate_user!, :only => [:home, :register]
  layout "layouts/studentlayout"
  def index
    if current_user.student?
      
    else
      @error="Please Update your Matric Number"
    end
    if micropost=params[:micropost]
      Micropost.new(:content=>micropost[:content], :user_id=>current_user.id).save
    end
    @micropost=Micropost.new
    @microposts=current_user.microposts
  end
  
  def home
    if current_user
      redirect_to studentview_path
    end
    if user=@user
      sign_in User.new(user)
    else
      @user=User.new
    end    
  end

  def messages
    if id=params[:id]
      @message=Message.find(id)
    elsif n=params[:new]
      @new=true
      @users=User.all
      @message=Message.new
    elsif message=params[:message]
      m=Message.new(message)
      m.user=current_user
      m.save
      Message.create(message)
      flash[:info]="Message Sent"
      @messages=current_user.messages
    else
      @messages= current_user.messages
    end

  end
  

  def courses
    if id=params[:id]
      @course=Course.find(id)
    else
      @courses=Course.all
    end
  end

  def news
    @news= News.all
  end

  def events
    if id=params[:id]
      @event=Event.find(id)
    else
      @events=Event.all
    end
  end

  def register
    if user_signed_in?
      @user=current_user
    else
      @user=User.new
    end    
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
    search= User.search(params[:q])
    @users=search.result
  end
  
  def groups
    if id=params[:id]
      @group=Group.find(id)
    elsif n=params[:new]
      @new=true
      @users=User.all
      @group=Group.new
    elsif message=params[:group]
      g=Group.new(group)
      g.leader=current_user.id
      g.save
      flash[:info]="Group Sent"
      @groups=Group.all
    else
      @groups=Group.all
    end
  end
end
