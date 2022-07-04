require 'rails_helper'

RSpec.feature "Forms", type: :feature do
  before do
    @user = FactoryBot.create(:user)
  end

  it 'can sign up with valid email and password' do
    visit 'users/sign_up'

    fill_in :user_email,	with: "capybara@mail.com"
    fill_in :user_password, with: "123123"
    fill_in :user_password_confirmation, with: "123123"
    click_on :commit

    expect(page).to have_content "Homepage"
  end

  it 'can log in with existing user' do
    visit 'users/sign_in'

    fill_in :user_email, with: @user.email
    fill_in :user_password, with: "11221122"
    click_on :commit

    expect(page).to have_content "Signed in successfully"
  end
end
