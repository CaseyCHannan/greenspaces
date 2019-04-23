require 'rails_helper'

feature 'Green Space New Form' do
  scenario 'user adds new green space successfully' do
    visit new_green_space_path
    expect(page).to have_content "New Green Space Form"

    fill_in 'Name', with: "Boston Common"
    fill_in 'Description', with: "It is required you carry a shotgun at night."
    click_button "Add Green Space"

    expect(current_path).to_not eq new_green_space_path
    expect(page).to have_content "Boston Common"
    expect(page).to have_content "It is required you carry a shotgun at night."
  end

  scenario 'user does not specify a name' do
    visit new_green_space_path
    click_button "Add Green Space"

    expect(current_path).to eq green_spaces_path
    expect(page).to have_content "Name can\'t be blank"
  end
end