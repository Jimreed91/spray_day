# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'crops', type: :feature do
  it 'can add a new crop with valid inputs' do
    login_as(:user)
    visit crops_new_path
    fill_in('crop_name', with: 'test apple')
    fill_in('crop_year', with: 2010)
    fill_in('crop_hectares', with: 2.2)
    fill_in('crop_row_spacing', with: 1.7)
    select('Your Farm', from: 'crop_farm_id')
    click_on('commit')
    expect(page).to have_content('test apple')
  end
end
