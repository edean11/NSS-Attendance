require 'rails_helper'

RSpec.describe Attendance, type: :model do
  it { should validate_presence_of :user }
  let(:user){ Fabricate(:user, name: 'John') }
  let(:new_attendance){ Fabricate.build(:attendance, date: DateTime.now, user: user, present: true) }
  it "should allow recording of attendance" do
    new_attendance.should be_valid
  end
  it "shouldn't allow recording on same day and same user" do
    Fabricate(:attendance, date: DateTime.now, user: user, present: true)
    new_attendance.should_not be_valid
  end
end
