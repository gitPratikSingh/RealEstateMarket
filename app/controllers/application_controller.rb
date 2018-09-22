class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authenticate_admin
    if current_user.user_type != 1
      flash[:alert] = "Access Denied to specified page"
      redirect_to root_path
    end
  end

  def authenticate_realtor
    if current_user.user_type != 2 && current_user.user_type != 1
      redirect_to root_path, notice: 'Access Denied to realtor-specific page'
    end
  end

  def authenticate_house_hunter
    if current_user.user_type != 3 && current_user.user_type != 1
      redirect_to root_path, notice: 'Access Denied to house_hunter specific page'
    end
  end

end
