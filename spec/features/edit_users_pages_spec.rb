require 'rails_helper'

describe "the edit user process" do
  it "edits a new user" do
    visit users_path
    click_link 'Add a user'
    fill_in 'Name', :with => 'Matthew'
    fill_in 'Email', :with => "Matthew's email"
    click_on 'Create User'
    click_on 'Matthew'
    click_on 'edit'
    fill_in 'Name', :with => 'New Name'
    click_on 'Update User'
    expect(page).to have_content 'New Name'
  end
end
