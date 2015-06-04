require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2) }

    it "should have a working factory" do
      Fabricate.build(:user).should be_valid
    end
  end
end
