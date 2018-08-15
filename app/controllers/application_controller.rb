class ApplicationController < ActionController::Base


  def authenticate_admin?
    unless current_user.admin?
      flash[:alert] = "Admin"
      redirect_to root_path
    end
  end

  def authenticate_client?
    unless current_user.client?
      redirect_to root_path
    end
  end
end
