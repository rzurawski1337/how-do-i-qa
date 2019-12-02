require 'rails_helper'

feature 'test #0', js: true do
  scenario 'beggining of HDIQA' do
    visit '/pages/test_0'
    expect(page).to have_content('Test #0 - the basics')
    click_on 'Next'
    expect(page).to have_content('Test #1 - scoping')
  end
end
