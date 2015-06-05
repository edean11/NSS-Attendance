require 'rails_helper'

RSpec.feature "UserAddAttendances", type: :feature do
  scenario "navigating to the new attendance page" do
    visit root_path
    click_on "Record Attendance"
    current_path.should == "/attendance/new"
    page.should have_content("Attendance")
    within("select#student") do
      page.should have_css("option")
      page.should have_content("Allison Higgenbothan Andy Meagher Austin Erlandson Ayumi Bennett Brandon Howard Bryan Finlayson David Shoup Devin Readel Dotun Olusoga Ed Dean Elisha Williams Eric Brengle Erin Page Jacob Lewis Jason Gresalfi Katye Russell Kyle McCormick Luke Lancaster Margaret Clinard Matthew Reuther Molly Black Tyler Black")
    end
  end
  scenario "user saves attendance" do
    visit root_path
    click_on "Record Attendance"
    current_path.should == "/attendance/new"
    page.should have_content("Attendance")
    click_on "Present"
    current_path.should == root_path
  end
end
