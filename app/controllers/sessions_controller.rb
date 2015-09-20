class SessionsController < ApplicationController
  def new
  end

  def create
    create_user = CreateUser.find_by(email: params[:email])
    if create_user && create_user.authenticate(params[:password]) 
      session[:create_user_id] = create_user.id
      redirect_to business_cards_path
    else
      render :new
    end
  end

  def destroy
    session[:create_user_id] = nil
    redirect_to new_sessions_path 
  end
end
