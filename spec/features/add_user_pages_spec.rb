require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit users_path
    click_link 'Add a user'
    fill_in 'Name', :with => 'Matthew'
    fill_in 'Email', :with => "Matthew's email"
    click_on 'Create User'
    expect(page).to have_content 'Pick your user'
  end

  it "gives error when no name is entered" do
    visit new_user_path
    click_on 'Create User'
    expect(page).to have_content 'errors'
  end
end
