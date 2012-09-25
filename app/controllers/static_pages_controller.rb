class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to studentview_index_path
    elsif admin_signed_in?
      redirect_to admin_index_path
    end
    @user= User.new
  end

  def contact
  end

  def about
  end
end
