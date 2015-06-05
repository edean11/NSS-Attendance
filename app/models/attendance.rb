class Attendance < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user
  validates :present, presence: true
  validate :check_for_duplicates, if: [:user]

  private
  def check_for_duplicates
    last_entered_attendance = Attendance.select(:created_at, :present).where(user: user, present: true).last
    today = Date.today
    if last_entered_attendance.present? && last_entered_attendance.created_at.at_beginning_of_day <= today
        errors[:base] << "Already Entered Attendance for Today"
    end
  end
end
