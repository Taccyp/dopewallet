class Admin::UsersController < ApplicationController

before_action :verify_admin 


def index
@users = User.all
end

def destroy
@user = User.find(params[:id])
@user.destroy
redirect_to admin_users_path
end

private 

  def verify_admin
    redirect_to '/' unless current_admin
  end


end