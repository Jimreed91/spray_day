# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'crops', type: :feature do
  it 'user can create and view a new crop' do
    login_as(create(:user))
    visit crops_new_path
    fill_in('crop_name', with: 'test apple')
    fill_in('crop_year', with: 2010)
    fill_in('crop_hectares', with: 2.2)
    fill_in('crop_row_spacing', with: 1.7)
    select('Your Farm', from: 'crop_farm_id')
    click_on('commit')
    expect(page).to have_content('test apple')
  end

  it 'user edit a crop and see their changes' do
    user = create(:user)
    create(:crop, name: 'cartoon foxes', farm: user.farm)
    login_as(user)
    visit crops_path
    click_button('Options')
    click_on('Edit')
    fill_in('crop_name', with: 'chunky bacon')
    click_on('commit')
    click_on('Index')
    expect(page).to have_content('chunky bacon')
  end

  it 'user can delete a crop from index' do
    user = create(:user)
    create(:crop, name: 'cartoon foxes', farm: user.farm)
    login_as(user)
    visit crops_path
    click_button('Options')
    click_on('Delete')
    expect(page).not_to have_content('cartoon foxes')
  end
end
