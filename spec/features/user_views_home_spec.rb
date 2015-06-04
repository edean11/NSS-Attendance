require 'rails_helper'

RSpec.feature "UserViewsHomes", type: :feature do
  before do
    visit root_path
  end

  scenario "viewing user list when empty" do
    visit root_path
    page.should have_content("There isn't any recorded attendance yet.  You should record yours!")
    page.should have_link("Record Attendance")
    page.should have_link("Record Future Absence")
  end

  scenario "viewing user list when not empty" do
    pending
    visit root_path
    page.should have_content("Attendance Leaderboard")
    page.should have_link("Record Attendance")
    page.should have_link("Record Future Absence")
  end
end
