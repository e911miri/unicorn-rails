class AdminviewController < ApplicationController
  before_filter :authenticate_admin!
  layout "adminlayout"
  def home
  end
end
