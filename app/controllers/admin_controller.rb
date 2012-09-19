class AdminController < ApplicationController
  before_filter :authenticate_admin!
  layout "adminlayout"
  def index
  end
end
