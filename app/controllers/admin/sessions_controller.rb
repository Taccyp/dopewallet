class Admin::SessionsController < ApplicationController
  def new
  end

  def create
    @admin = Admin.find_by_username(params[:username])
    if @admin.present?
      if @admin.password == params[:password]
        session[:admin_id] = @admin.id
        #raise "Success!"
        redirect_to admin_cards_path
      else
      flash[:alert] ="Wrong password"
      redirect_to new_admin_session_path
    end
  end
end


  def destroy
  end

end 