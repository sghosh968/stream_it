class DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:user_dashboard]
  def homepage


  end



  def user_dashboard

  end


  private

end
