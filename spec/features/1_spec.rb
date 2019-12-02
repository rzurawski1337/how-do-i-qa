require 'rails_helper'

feature 'test #1', js: true do
  scenario 'first task' do
    visit '/pages/test_1'
    expect(page).to have_content('Test #1 - scoping')
    within('.text-right') do
      click_on('Next')
    end
    expect(page).to have_content('Test #2 - forms')
  end
end
