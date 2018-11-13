require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  before :each do
    User.create!(
      first_name: "David",
      last_name: "Son",
      email: "son.hyun.uk@hotmail.com",
      password: "password",
      password_confirmation: "password"
      )
  end

  scenario "They see all products" do
    # ACT
    visit root_path
    click_on "Login"
    page.fill_in "Email", with: "son.hyun.uk@hotmail.com"
    page.fill_in "Password", with: "password"
    click_on "Submit"
    # DEBUG / VERIFY
    save_screenshot
    expect(page).to have_content('Hello David')
  end

end
