class StudentviewController < ApplicationController
  before_filter :authenticate_user!
  layout "layouts/studentlayout"
  def index
    
  end

  def registration
  end
end
