# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  it 'can sign up with valid email and password' do
    visit 'users/sign_up'

    fill_in :user_email,	with: 'capybara@mail.com'
    fill_in :user_password, with: '123123'
    fill_in :user_password_confirmation, with: '123123'
    click_on :commit

    expect(page).to have_content 'Homepage'
  end
end
