class HomeController < ApplicationController
  def index
    find_user_attendance
  end

  protected
  def find_user_attendance
    @user_attendance = Attendance.group(:user_id)
  end
end
