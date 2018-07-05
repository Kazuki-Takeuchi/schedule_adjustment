class UsersController < ApplicationController
  authorize_resource only: %i(index destroy)
  before_action :set_user, only: %i(destroy)

  def index
    @users = User.all.order("graduation_year").page(params[:page])
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
