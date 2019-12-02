require 'rails_helper'

feature 'test #6', js: true do
  context 'When Country is defined' do
    let!(:country) { create(:country) }

    scenario 'sixth task A' do
      visit '/pages/test_6'
      expect(page).to have_content('Test #6 - creating factory for model in module')
      expect(page).to have_content(country.name)
      expect(page).to have_content(country.code)
    end
  end

  context 'When Country is not defined' do
    scenario 'sixth task B' do
      visit '/pages/test_6'
      expect(page).to have_content('Test #6 - creating factory for model in module')
      expect(page).to have_content('No data')
    end
  end
end

