class AttendancesController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @present = true
    @date = DateTime.now
    redirect_to root_path
  end
end
