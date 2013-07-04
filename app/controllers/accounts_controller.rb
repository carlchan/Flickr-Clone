class AccountsController < ApplicationController
  def edit
    @user = current_user
  end
  def update
    @user = current_user
    @user.update_attributes(params[:user])
    @user.photostream.update_attributes(:username => @user.username)

    redirect_to account_url
  end
  def show
    @user = current_user
  end
end
