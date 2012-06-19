class WelcomeController < ApplicationController
  def index
    if user_signed_in?
    else

    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

    def devise_mapping
       @devise_mapping ||= Devise.mappings[:user]
    end
    
  def after_sign_in_path_for(resource)
    redirect_to user_landings_path
  end
end
